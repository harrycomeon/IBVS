
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
/*----Main Function------*/
int main (int argc, char** argv)
{
    ros::init(argc,argv,"velcoity_test_node");
    ros::NodeHandle nh;

    ros::Subscriber jointStateSub = nh.subscribe("/my_joint_states",10,jointStateCallbackGazebo);

    ros::Publisher JointVelPub = nh.advertise<ur5_vs::joint_vel>("/joint_vel_cmd",1);
    ros::Publisher JointAngPub = nh.advertise<ur5_vs::joint_angles>("/joint_angles_cmd",1);
    ros::Publisher SimVarPub = nh.advertise<ur5_vs::sim_variables>("/sim_variables_cmd",1);

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

    double eta=1000;
    double kpx=eta, kdx=0.0, kix=0.0; //PID gains
    double kpy=eta, kdy=0.0, kiy=0.0; //PID gains
    double kpz=eta, kdz=0.0, kiz=0.0; //PID gains

    double dt=0,duration=0; //time and duration
    double lambda=531.15; //focal-length of camera

    //Getting current feature
    ros::spinOnce();
    double u_c[2]={0,0};
    u_c[0]=x_point, u_c[1]=y_point;

    double m[3]={0,0,0};
    m[0]= (u_c[0]-320)/(531.15/640);    //(u-u0)/px
    m[1]= (u_c[1]-240)/(531.15/480);    //(v-v0)/py
    m[2]= area;

    //Desired image features
    double u_d[2]={0,0};
    u_d[0] = 320; u_d[1] = 240;
    double area_desired = 75000;
    double centroid_depth_desired = 0.17;
    double m_d[3]={0,0,0};
    m_d[0]= (u_d[0]-320)/(531.15/640);    //(u-u0)/px
    m_d[1]= (u_d[1]-240)/(531.15/480);    //(v-v0)/py
    m_d[2]= area_desired;

    double points_corner_desired[8];
    points_corner_desired[0]=  (188-320)/(531.15/640);
    points_corner_desired[1] = (372-240)/(531.15/480);
    points_corner_desired[2] = (188-320)/(531.15/640);
    points_corner_desired[3] = (109-240)/(531.15/480);
    points_corner_desired[4] = (450-320)/(531.15/640);
    points_corner_desired[5] = (109-240)/(531.15/480);
    points_corner_desired[6] = (450-320)/(531.15/640);
    points_corner_desired[7] = (372-240)/(531.15/480);

    double depth_p[4], prev_depth[4]; //depth of centroid
    //depth_p[0]=(double)centroid_depth, depth_p[1]=(double)centroid_depth, depth_p[2]=(double)centroid_depth;
    depth_p[0]=centroid_depth_desired, depth_p[1]=centroid_depth_desired, depth_p[2]=centroid_depth_desired;
    prev_depth[0]=depth_p[0], prev_depth[1]=depth_p[1], prev_depth[1]=depth_p[2];

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
    f1.open("/home/mithun/ur_vs_gazebo/src/ur5_vs/src/results/trackedfeatures.txt",std::ios_base::trunc);
    f2.open("/home/mithun/ur_vs_gazebo/src/ur5_vs/src/results/joint_velocities.txt",std::ios_base::trunc);
    f3.open("/home/mithun/ur_vs_gazebo/src/ur5_vs/src/results/error.txt",std::ios_base::trunc);
    f4.open("/home/mithun/ur_vs_gazebo/src/ur5_vs/src/results/camera_vel.txt",std::ios_base::trunc);

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
        //area_interaction_matrix(points_corner,depth_p,area,L);
        area_interaction_matrix(points_corner_desired,depth_p,area_desired,L);

        cv::invert(L, Linv, cv::DECOMP_SVD);
        cout << "Interaction matrix : " << L << endl;
        Vc = -Linv * Error_PID;

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
        //theta_dot = Jg_inv * Ve;
        cout << "Joint velocity " << theta_dot << endl;

#if(VEL_TEST)
        double joint_velocities[6];
        joint_velocities[0]=theta_dot.at<double>(0,0);
        joint_velocities[1]=theta_dot.at<double>(1,0);
        joint_velocities[2]=theta_dot.at<double>(2,0);
        joint_velocities[3]=theta_dot.at<double>(3,0);
        joint_velocities[4]=theta_dot.at<double>(4,0);
        joint_velocities[5]=theta_dot.at<double>(5,0);

        //fixed
        //joint_velocities[0]=0.1;
        //joint_velocities[1]=0;
        //joint_velocities[2]=0;
        //joint_velocities[3]=0;
        //joint_velocities[4]=0;
        //joint_velocities[5]=0;

        //sending velocity to gazebo controller
        double t1 =  gazebo::common::Time::GetWallTime().Double();
        ur5_vs::joint_vel msg_vel;
        msg_vel.vel0.data = joint_velocities[0];
        msg_vel.vel1.data = joint_velocities[1];
        msg_vel.vel2.data = joint_velocities[2];
        msg_vel.vel3.data = joint_velocities[3];
        msg_vel.vel4.data = joint_velocities[4];
        msg_vel.vel5.data = joint_velocities[5];

        ur5_vs::sim_variables msg_simvar;
        msg_simvar.sim_enable.data = true;
        msg_simvar.reconfigure.data = false;

        //std::cout << "----------START----------\n";
        SimVarPub.publish(msg_simvar);
        JointVelPub.publish(msg_vel);
        gazebo::common::Time::MSleep(100);
        msg_simvar.sim_enable.data = false;
        SimVarPub.publish(msg_simvar);
        //std::cout << "----------STOP----------\n";
        double t = (gazebo::common::Time::GetWallTime().Double() - t1);
        std::cout << "Joint Velocities Applied for : " <<  t << " seconds"<<std::endl;
        //std::cout << "Applied values\n";
        //std::cout << joint_velocities[0] << std::endl;
        //std::cout << joint_velocities[1] << std::endl;
        //std::cout << joint_velocities[2] << std::endl;
        //std::cout << joint_velocities[3] << std::endl;
        //std::cout << joint_velocities[4] << std::endl;
        //std::cout << joint_velocities[5] << std::endl;
        //std::cout << "-----------------------------\n";

#endif
        f2 << duration << "\t" << jv1g << "\t"<< jv2g << "\t"<< jv3g << "\t"<< jv4g << "\t"<< jv5g << "\t"<< jv6g << endl;  //saving joint velocities velocities to file
        getRealCameraVel(Vc_real);
        f4 << duration << "\t" << Vc_real.at<double>(0) << "\t"<< Vc_real.at<double>(1) << "\t"<< Vc_real.at<double>(2) << "\t"<< Vc_real.at<double>(3) << "\t"<< Vc_real.at<double>(4) << "\t"<< Vc_real.at<double>(5) << endl;  //saving camera velocities velocities to file

        //finding current error
        ros::spinOnce();
        u_c[0]=x_point;
        u_c[1]=y_point;

        cout << "xy " << x_point << " " << y_point << endl;

        m[0]= (u_c[0]-320)/(531.15/640);    //(u-u0)/px
        m[1]= (u_c[1]-240)/(531.15/480);    //(v-v0)/py
        m[2]= area;

        if (isnan(centroid_depth))
        {
            depth_p[0]=prev_depth[0];
            depth_p[1]=prev_depth[1];
            depth_p[2]=prev_depth[2];
        }
        else
        {
            depth_p[0]=(double)centroid_depth;
            depth_p[1]=(double)centroid_depth;
            depth_p[2]=(double)centroid_depth;

        }
        prev_depth[0] = depth_p[0],prev_depth[1] = depth_p[1],prev_depth[2] = depth_p[2];
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

        if (sqrt_mean_error == 0 )
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
        Error_PID.at<double>(2,0)=kpz*Pterm.at<double>(1,0)+kiz*Iterm.at<double>(1,0)+kdz*Dterm.at<double>(1,0);

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
    f4.close();
    return 0;
}
