
// velocity and position test

#include <ros/ros.h>
#include <ros/package.h>
#include <sensor_msgs/JointState.h>
#include <trajectory_msgs/JointTrajectory.h>
#include <trajectory_msgs/JointTrajectoryPoint.h>
#include <iostream>

#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <my_funcs.h>
#include <gazebo/gazebo.hh>
#include <ur5_vs/joint_vel.h>
#include <ur5_vs/joint_angles.h>
#include <ur5_vs/sim_variables.h>
#include <ur5_vs/joint_states.h>


using namespace std;
using namespace cv;

#define VEL_TEST 1
#define POS_TEST 0
/*
//function for joint state callback - Gazebo
double jp1g, jp2g, jp3g, jp4g, jp5g, jp6g;
double jv1g, jv2g, jv3g, jv4g, jv5g, jv6g;
void jointStateCallbackGazebo(const ur5_vs::joint_states & msg)
{
    jp1g = (double)msg.ang0.data;
    jp2g = (double)msg.ang1.data;
    jp3g = (double)msg.ang2.data;
    jp4g = (double)msg.ang3.data;
    jp5g = (double)msg.ang4.data;
    jp6g = (double)msg.ang5.data;

    jv1g = (double)msg.vel0.data;
    jv2g = (double)msg.vel1.data;
    jv3g = (double)msg.vel2.data;
    jv4g = (double)msg.vel3.data;
    jv5g = (double)msg.vel4.data;
    jv6g = (double)msg.vel5.data;
}
*/

double duration=0; //time duration
double start_time = 0;

void jointStateCallbackGazebo(const sensor_msgs::JointState & msg)
{
    jp1g = (double)msg.position[0];
    jp2g = (double)msg.position[1];
    jp3g = (double)msg.position[2];
    jp4g = (double)msg.position[3];
    jp5g = (double)msg.position[4];
    jp6g = (double)msg.position[5];

    jv1g = (double)msg.velocity[0];
    jv2g = (double)msg.velocity[1];
    jv3g = (double)msg.velocity[2];
    jv4g = (double)msg.velocity[3];
    jv5g = (double)msg.velocity[4];
    jv6g = (double)msg.velocity[5];
}

void jointstatesCallback(const sensor_msgs::JointStateConstPtr& msg)
{

    jp1g = (double)msg->position[0];
    jp2g = (double)msg->position[1];
    jp3g = (double)msg->position[2];
    jp4g = (double)msg->position[3];
    jp5g = (double)msg->position[4];
    jp6g = (double)msg->position[5];

    jv1g = (double)msg->velocity[0];
    jv2g = (double)msg->velocity[1];
    jv3g = (double)msg->velocity[2];
    jv4g = (double)msg->velocity[3];
    jv5g = (double)msg->velocity[4];
    jv6g = (double)msg->velocity[5];

}


/*----Main Function------*/
int main (int argc, char** argv)
{
    ros::init(argc,argv,"ibvs_three_node");
    ros::NodeHandle nh;

    //ros::Subscriber jointStateSub = nh.subscribe("/joint_states",10,jointStateCallbackGazebo);
    
    ros::Subscriber sub = nh.subscribe("/joint_states", 1000,  jointstatesCallback);

    ros::Publisher JointVelPub = nh.advertise<ur5_vs::joint_vel>("/joint_vel_cmd",1);
    ros::Publisher JointAngPub = nh.advertise<ur5_vs::joint_angles>("/joint_angles_cmd",1);
    ros::Publisher SimVarPub = nh.advertise<ur5_vs::sim_variables>("/sim_variables_cmd",1);

    ros::Publisher jointVelPub1 = nh.advertise<trajectory_msgs::JointTrajectory>("/vel_traj_controller/command",1000);
    trajectory_msgs::JointTrajectory traj;
    trajectory_msgs::JointTrajectoryPoint trajPoint;
    traj.header.seq = 0;
            

    //image features subscriber
    ros::Subscriber imgFeaturesSub = nh.subscribe<object_detection::image_data>("/object_points", 10, imgFeatureCallback);
    sleep(1);

    //declaration of varibales
    Mat Error = Mat(3, 1, CV_64F, 0.0);
    Mat Pterm = Mat(3, 1, CV_64F, 0.0);
    Mat Iterm = Mat(3, 1, CV_64F, 0.0);
    Mat Dterm = Mat(3, 1, CV_64F, 0.0);
    Mat Pre_Error = Mat(3, 1, CV_64F, 0.0);
    Mat Error_PID = Mat(3, 1, CV_64F, 0.0);

    Mat L = Mat(3, 6, CV_64F, 0.0);
    Mat Linv = Mat(6, 3, CV_64F, 0.0);
    Mat Vc = Mat(6, 1, CV_64F, 0.0);
    Mat Ve = Mat(6, 1, CV_64F, 0.0);
    Mat Vb = Mat(6, 1, CV_64F, 0.0);

    Mat Jg = Mat(6, 6, CV_64F, 0.0);
    Mat Jg_inv = Mat(6, 6, CV_64F, 0.0);
    Mat theta_dot = Mat(6,1, CV_64F, 0.0);
    Mat Vc_real = Mat(6,1, CV_64F, 0.0);

    double kpx=1.0, kdx=0.0, kix=0.0; //PID gains
    double kpy=1.0, kdy=0.0, kiy=0.0; //PID gains
    double kpz=1.0, kdz=0.0, kiz=0.0; //PID gains //correct
    //double kpz=0.005, kdz=0.0, kiz=0.0; //PID gains

    double dt=0,duration=0; //time and duration
    double lambda=531.15; //focal-length of camera

    //Getting current feature
    ros::spinOnce();
    double u_c[2]={0,0};
    u_c[0]=x_point, u_c[1]=y_point;

    double m[3]={0,0,0};
    m[0]= (u_c[0]-320)/(531.15/640);    //(u-u0)/px
    m[1]= (u_c[1]-240)/(531.15/480);    //(v-v0)/py
    m[2]= centroid_depth;

    //Desired image features
    double u_d[2]={0,0};
    u_d[0] = 320; u_d[1] = 240;
    double centroid_depth_desired = 0.65;
    double m_d[3]={0,0,0};
    m_d[0]= (u_d[0]-320)/(531.15/640);    //(u-u0)/px
    m_d[1]= (u_d[1]-240)/(531.15/480);    //(v-v0)/py
    m_d[2]= centroid_depth_desired;

    double depth_p[2], prev_depth[2]; //depth of centroid
    depth_p[0]=(double)centroid_depth, depth_p[1]=(double)centroid_depth;
    //depth_p[0]=(double)centroid_depth_desired, depth_p[1]=(double)centroid_depth_desired;
    prev_depth[0]=depth_p[0], prev_depth[1]=depth_p[1];

    //Error
    double mean_error = 0;
    for(int i = 0; i < 3; i++)
    {
        Error.at<double>(i,0) = m[i]-m_d[i];
        mean_error = mean_error + Error.at<double>(i,0)*Error.at<double>(i,0);
    }
    double sqrt_mean_error = sqrt(mean_error);
    Error_PID.at<double>(0,0)=kpx*Error.at<double>(0,0);
    Error_PID.at<double>(1,0)=kpy*Error.at<double>(1,0);
    Error_PID.at<double>(2,0)=kpz*Error.at<double>(2,0);

    cout << "-------------------------t="<<duration<<"---------------------------" << endl;
    cout << "Current Feature = [" << m[0] << " " << m[1] << " " << m[2] << "]" << endl;
    cout << "Desired Feature = [" << m_d[0] << " " << m_d[1] << " " << m_d[2]  << "]" << endl;
    cout << "Mean Error = " << sqrt_mean_error << endl;
    cout << "-------------------------------------------------------" << endl;
    cout << "Press enter to start visual servoing " << endl;
    getchar();

    //file for writing image features
    ofstream f1, f2, f3, f4;
    f1.open("/home/harry/vs_ws/src/ur5_vs/src/results/trackedfeatures.txt",std::ios_base::trunc);
    f2.open("/home/harry/vs_ws/src/ur5_vs/src/results/joint_velocities.txt",std::ios_base::trunc);
    f3.open("/home/harry/vs_ws/src/ur5_vs/src/results/error.txt",std::ios_base::trunc);
    f4.open("/home/harry/vs_ws/src/ur5_vs/src/results/camera_vel.txt",std::ios_base::trunc);

    f1 << duration << "\t" << m[0] << "\t" << m[1] << "\t" << m[2] << endl;
    f2 << duration << "\t" << theta_dot.at<double>(0) << "\t"<< theta_dot.at<double>(1) << "\t"<< theta_dot.at<double>(2) << "\t"<< theta_dot.at<double>(3) << "\t"<< theta_dot.at<double>(4) << "\t"<< theta_dot.at<double>(5) << endl;  //saving joint velocities velocities to file
    f3 << duration << "\t" << abs(Error.at<double>(0,0)) << "\t"<< abs(Error.at<double>(1,0)) << "\t" << abs(Error.at<double>(2,0)) << "\t" << sqrt_mean_error << endl;  //saving error to file
    f4 << duration << "\t" << Vc_real.at<double>(0) << "\t"<< Vc_real.at<double>(1) << "\t"<< Vc_real.at<double>(2) << "\t"<< Vc_real.at<double>(3) << "\t"<< Vc_real.at<double>(4) << "\t"<< Vc_real.at<double>(5) << endl;  //saving camera velocities velocities to file

    double initial_time = gazebo::common::Time::GetWallTime().Double();
    ros::Rate rate(100);
    while (ros::ok)
    {
        double time = gazebo::common::Time::GetWallTime().Double();
        //feature velocity to camera velocity
        //Way-1
        Vc.at<double>(0,0)= (depth_p[0]/lambda)*Error_PID.at<double>(0,0);
        Vc.at<double>(1,0)= (depth_p[1]/lambda)*Error_PID.at<double>(1,0);
        Vc.at<double>(2,0)= Error_PID.at<double>(2,0);

        //Way-2
        //computeImageJacobian(m,depth_p,L);
        //cv::invert(L, Linv, cv::DECOMP_SVD);
        //Vc = -Linv * Error_PID;
        cout << "Velocity: camera_frame  " << Vc << endl;
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t1="<<duration<<"---------------------" << endl;

        //Convert velocity from camera frame to end-effector frame
        //newconvertVelCameratoEEframe(Vc,Ve);
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t2="<<duration<<"---------------------" << endl;
        //cout << "Velocity: eelink_frame  " << Ve << endl;

        //Convert velocity from end-effector frame to base frame
        newConvertVelEEtoBaseframe(Vc,Vb);
        //Vb.at<double>(2,0)=0.0;
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t3="<<duration<<"---------------------" << endl;
        cout << "Velocity: base_frame " << Vb << endl;

        //Obtaining robot Jacobian
        ros::spinOnce();
        double th[6]={jp1g, jp2g, jp3g, jp4g, jp5g, jp6g};
        //cout << "current joint angles " << jp1g << " " << jp2g << " " << jp3g << " " << jp4g << " " << jp5g << " " << jp6g << endl;
        //getchar();
        getRobotJacobian(th,Jg);
        //cout << "Jacobian " << J << endl;
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t4="<<duration<<"---------------------" << endl;
        //ROS_INFO_STREAM("Geometric Jacobian " << endl << Jg);

        //Obtaining joint velocities
        cv::invert(Jg, Jg_inv, cv::DECOMP_SVD);
        theta_dot = Jg_inv * Vb;
        cout << "Joint velocity " << theta_dot << endl;

f2 << duration << "\t" << theta_dot.at<double>(0) << "\t"<< theta_dot.at<double>(1) << "\t"<< theta_dot.at<double>(2) << "\t"<< theta_dot.at<double>(3) << "\t"<< theta_dot.at<double>(4) << "\t"<< theta_dot.at<double>(5) << endl;  //saving joint velocities velocities to file

        //getRealCameraVel(Vc_real);
        f4 << duration << "\t" << Vc.at<double>(0) << "\t"<< Vc.at<double>(1) << "\t"<< Vc.at<double>(2) << "\t"<< Vc.at<double>(3) << "\t"<< Vc.at<double>(4) << "\t"<< Vc.at<double>(5) << endl;  //saving camera velocities velocities to file
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t5="<<duration<<"---------------------" << endl;

        //Sending velocity to controller
        traj.points.clear();
        trajPoint.velocities.clear();
        trajPoint.accelerations.clear();
        trajPoint.positions.clear();
        traj.joint_names.clear();
        //applying velocity and acceleartion limit
        double vel_limit = 3.0; //i.e. 3 radian/sec
//        double acc_limit[6] = {5.0,4.0,4.0,4.0,3.0,5.0}; //i.e. 4 radian/sec^2

        double acc_limit[6] = {2.0,4.0,4.0,4.0,3.0,2.0}; //i.e. 4 radian/sec^2

        //AMAX=[5.0,4.0,4.0,4.0,3.0,5.0]
        //applying field of view limits
        double xmin=-320, xmax=320, ymin=-240, ymax=240;

        if (((m[0]>=xmin && m[0]<=xmax) && (m[1]>=ymin && m[1]<=ymax)) && (abs(theta_dot.at<double>(0,0))<vel_limit && abs(theta_dot.at<double>(1,0))<vel_limit && abs(theta_dot.at<double>(2,0))<vel_limit && abs(theta_dot.at<double>(3,0))<vel_limit && abs(theta_dot.at<double>(4,0))<vel_limit && abs(theta_dot.at<double>(5,0))<vel_limit))
        {
            trajPoint.velocities.push_back(theta_dot.at<double>(0));
            trajPoint.velocities.push_back(theta_dot.at<double>(1));
            trajPoint.velocities.push_back(theta_dot.at<double>(2));
            trajPoint.velocities.push_back(theta_dot.at<double>(3));
            trajPoint.velocities.push_back(theta_dot.at<double>(4));
            trajPoint.velocities.push_back(theta_dot.at<double>(5));

           // trajPoint.velocities.push_back(0);
           // trajPoint.velocities.push_back(1);
           // trajPoint.velocities.push_back(1);
           // trajPoint.velocities.push_back(0);
           // trajPoint.velocities.push_back(0);
           // trajPoint.velocities.push_back(0);

            trajPoint.accelerations.push_back(acc_limit[0]);
            trajPoint.accelerations.push_back(acc_limit[1]);
            trajPoint.accelerations.push_back(acc_limit[2]);
            trajPoint.accelerations.push_back(acc_limit[3]);
            trajPoint.accelerations.push_back(acc_limit[4]);
            trajPoint.accelerations.push_back(acc_limit[5]);

        }
        else
        {
            ROS_ERROR("Joint Velocity limit exceeded !");
            trajPoint.velocities.push_back(0);
            trajPoint.velocities.push_back(0);
            trajPoint.velocities.push_back(0);
            trajPoint.velocities.push_back(0);
            trajPoint.velocities.push_back(0);
            trajPoint.velocities.push_back(0);

            trajPoint.accelerations.push_back(0);
            trajPoint.accelerations.push_back(0);
            trajPoint.accelerations.push_back(0);
            trajPoint.accelerations.push_back(0);
            trajPoint.accelerations.push_back(0);
            trajPoint.accelerations.push_back(0);
        }

        //cout << "Press enter to start robot ... " << endl;
        //getchar();
        trajPoint.time_from_start = ros::Duration(1.0);
        traj.header.seq = traj.header.seq+1;
        traj.header.stamp = ros::Time::now();
        traj.points.push_back(trajPoint);
        traj.joint_names.push_back("shoulder_pan_joint");
	traj.joint_names.push_back("shoulder_lift_joint");
	traj.joint_names.push_back("elbow_joint");
	traj.joint_names.push_back("wrist_1_joint");
	traj.joint_names.push_back("wrist_2_joint");
	traj.joint_names.push_back("wrist_3_joint");
        
        jointVelPub1.publish(traj); //joint speed publisher
        rate.sleep();

        f2 << duration << "\t" << jv1g << "\t"<< jv2g << "\t"<< jv3g << "\t"<< jv4g << "\t"<< jv5g << "\t"<< jv6g << endl;  //saving joint velocities velocities to file
        getRealCameraVel(Vc_real);
        f4 << duration << "\t" << Vc_real.at<double>(0) << "\t"<< Vc_real.at<double>(1) << "\t"<< Vc_real.at<double>(2) << "\t"<< Vc_real.at<double>(3) << "\t"<< Vc_real.at<double>(4) << "\t"<< Vc_real.at<double>(5) << endl;  //saving camera velocities velocities to file

        //finding current error
        ros::spinOnce();
        u_c[0]=x_point;
        u_c[1]=y_point;

        cout << "xy " << x_point << " " << y_point << endl;
        cout << "centroid_depth " << centroid_depth << endl;

        m[0]= (u_c[0]-320)/(531.15/640);    //(u-u0)/px
        m[1]= (u_c[1]-240)/(531.15/480);    //(v-v0)/py
        m[2]= (double)centroid_depth;

        if (isnan(centroid_depth))
        {
            depth_p[0]=prev_depth[0];
            depth_p[1]=prev_depth[1];
        }
        else
        {
            depth_p[0]=(double)centroid_depth;
            depth_p[1]=(double)centroid_depth;
        }
        prev_depth[0] = depth_p[0],prev_depth[1] = depth_p[1];
        Error.copyTo(Pre_Error);

        mean_error=0;
        for(int i = 0; i < 3; i++)
        {
            Error.at<double>(i,0) = m[i]-m_d[i];
            mean_error = mean_error + Error.at<double>(i,0)*Error.at<double>(i,0);
        }

        sqrt_mean_error = sqrt(mean_error);

        f3 << duration << "\t" << abs(Error.at<double>(0,0)) << "\t"<< abs(Error.at<double>(1,0)) << "\t" << abs(Error.at<double>(2,0)) << "\t" << sqrt_mean_error << endl;  //saving error to file

        duration = gazebo::common::Time::GetWallTime().Double() - initial_time;
        cout << "-------------------------t="<<duration<<"---------------------------" << endl;
        cout << "Current Feature = [" << m[0] << " " << m[1] << " " << m[2] << "]" << endl;
        cout << "Desired Feature = [" << m_d[0] << " " << m_d[1] << " " << m_d[2]  << "]" << endl;
        cout << "Mean Error = " << sqrt_mean_error << endl;
        cout << "-------------------------------------------------------" << endl;
        f1 << duration << "\t" << m[0] << "\t" << m[1] << "\t" << m[2] << "\n";

        if (sqrt_mean_error < 1.0 )
            break;

        //Implement PID
        dt = gazebo::common::Time::GetWallTime().Double() - time;
        cout << "dt " << dt << endl;
        Pterm = Error; //Proportional term
        Iterm += Error*dt; //Integral term
        Dterm = (1/dt)*((Error-Pre_Error)); //Derivative term
        //Error_PID = kp*Pterm + ki*Iterm + kd*Dterm;
        Error_PID.at<double>(0,0)=kpx*Pterm.at<double>(0,0)+kix*Iterm.at<double>(0,0)+kdx*Dterm.at<double>(0,0);
        Error_PID.at<double>(1,0)=kpy*Pterm.at<double>(1,0)+kiy*Iterm.at<double>(1,0)+kdy*Dterm.at<double>(1,0);
        Error_PID.at<double>(2,0)=kpz*Pterm.at<double>(2,0)+kiz*Iterm.at<double>(2,0)+kdz*Dterm.at<double>(2,0);

        cout << "PID terms " << Pterm << " " << Iterm << " " << Dterm << endl;
        //cout << "Error PID terms " << kp*Pterm << " " << ki*Iterm << " " << kd*Dterm << endl;
        cout << "Error PID " << Error_PID << endl;

        //cout << "Check values and then press enter ... " << endl;
        //getchar();
        //sleep(1);
    }
    f1.close();
    f2.close();
    f3.close();    
    trajPoint.velocities.clear();
    trajPoint.accelerations.clear();
    traj.joint_names.clear();
    traj.points.clear();
    f4.close();
    return 0;
}



