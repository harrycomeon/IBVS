

/* Image based visual servoing using three features
 * System : UR5 Robot with realsense camera mounted on end-effector
 * Author : Deepak Raina (Emp ID: 1445893)
 */

#include <ros/ros.h>
#include <ros/package.h>
#include <iostream>
#include <trajectory_msgs/JointTrajectory.h>
#include <trajectory_msgs/JointTrajectoryPoint.h>
#include <pcl_conversions/pcl_conversions.h>
//#include <control_speed/velocity_control.h>
//#include <moveit/move_group_interface/move_group.h>

#include <moveit/move_group_interface/move_group_interface.h>

#include <moveit/robot_model_loader/robot_model_loader.h>
#include <my_funcs.h>
#include <ur5_vs/joint_states.h>

using namespace Eigen;
using namespace std;
using namespace cv;

ros::Publisher pb;
ros::Subscriber sb;
Mat image;
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

/*-------Main Function---------*/
int main (int argc, char** argv)
{
    ros::init(argc,argv,"ibvs_three_features");
    ros::NodeHandle nh;
    cv::startWindowThread();

    //joint states subscriber
    ros::Subscriber jointStateSub = nh.subscribe("/joint_states",10,jointStateCallback);
    //publisher for velocity
    ros::Publisher jointVelPub = nh.advertise<trajectory_msgs::JointTrajectory>("/ur_driver/joint_speed", 10);
    trajectory_msgs::JointTrajectory traj;
    trajectory_msgs::JointTrajectoryPoint trajPoint;
    traj.header.seq = 0;
    //publisher for velocity - seperate thread
    //ros::Publisher velPub= nh.advertise<control_speed::velocity_control>("/calc_velocity",10);

    //image features subscriber
    ros::Subscriber imgFeaturesSub = nh.subscribe<object_detection::image_data>("/object_points", 10, imgFeatureCallback);
    sleep(1);

    //UR-Driver Publisher (to move robot to initial position) - for a lazy person like me :-)
    ros::Publisher URDriver_pub = nh.advertise<std_msgs::String>("/ur_driver/URScript", 1);
    sleep(1);
    while(URDriver_pub.getNumSubscribers() == 0)
    {
        //cout << URDriver_pub.getNumSubscribers() << endl;
        cout << "No subscriber for UR-Driver" << endl;
    }
    cout << "Yes, I got subscriber for UR-Driver" << endl;
    std_msgs::String URScript;
    //URScript.data = "movej([0.02,-1.69,1.24,-1.13,-1.47,-0.03],a=0.34,v=0.17)"; //
    //URScript.data = "movej([0.30,-1.52,0.65,-0.70,-1.47,0.25],a=0.34,v=0.17)"; //
    //URScript.data = "movej([0.18,-1.77,1.31,-1.13,-1.47,0.14],a=0.34,v=0.17)"; //

//    URScript.data = "movej([-1.57,-1.05,1.31,-3.49,-1.57,0.00],a=0.34,v=0.17)"; //bend 2

//    URScript.data = "movej([-1.57,-1.05,1.57,-0.52,1.57,3.14],a=0.34,v=0.17)"; //new degreebend 2

//    URScript.data = "movej([2.3610904216766357,-1.9584882895099085,2.094102382659912,0.00556182861328125,1.577612042427063,0.005624721292406321],a=0.34,v=0.17)"; //new degreebend 

//    URScript.data = "movej([2.3250255584716797,-1.472175423298971,2.2704977989196777,-3.8531721274005335,4.715643882751465,3.141446590423584],a=0.34,v=0.17)"; //new degreebend 

//    URScript.data = "movej([2.3473551273345947,-2.044220272694723,1.744307041168213,5.070453643798828,4.712550163269043,  3.136826276779175],a=0.24,v=0.10)"; //new degreebend 2

//轴孔装配      URScript.data = "movej([3.1935062408447266,-1.8552196661578577,1.892092227935791,4.69989538192749,4.701924800872803,  4.791538715362549],a=0.24,v=0.10)"; //new degreebend 2
//    URScript.data = "movej([2.770921468734741,-2.0303056875811976,1.9436936378479004,4.779425621032715,4.755170822143555,  1.9157911539077759],a=0.24,v=0.10)"; //new degreebend 2


//    URDriver_pub.publish(URScript);
//    cout << "Press enter when robot will reach its initial position" << endl;
//    getchar();


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

    //PID gains
    double kpx=0.5, kdx=0.0, kix=0.0;
    double kpy=1.0, kdy=0.0, kiy=0.0;
    double kpz=0.5, kdz=0.0, kiz=0.0;

//    double kpz=1.0, kdz=0.0, kiz=0.0;
    double dt=0,duration=0; //time and duration

 //   double lambda=643.33; //focal-length of camera
//    double lambda=606.0125732421875; //focal-length of camera
    double lambda=658.2874220024545; //focal-length of camera

    //Getting current feature
    ros::spinOnce();
    double u_c[2]={0,0};
    u_c[0]=x_point, u_c[1]=y_point;
    double depth_p[2]={0,0}, prev_depth[2]; //depth of centroid
    depth_p[0]=(double)centroid_depth, depth_p[1]=(double)centroid_depth;
//    depth_p[0]=0.7, depth_p[1]=0.7;
//    depth_p[0]=0.8, depth_p[1]=0.8;
    prev_depth[0]=depth_p[0], prev_depth[1]=depth_p[1];

    double m[3]={0,0,0};
    m[0]= (u_c[0]-320)/(658.2874220024545/640);    //(u-u0)/px
    m[1]= (u_c[1]-240)/(658.2874220024545/480);    //(v-v0)/py
    m[2]= centroid_depth;

    //Desired image features
    double u_d[2]={0,0};
    //u_d[0] = 320; u_d[1] = 240; 240,370,477///240,400,435

//    u_d[0] = 245; u_d[1] = 240; //dynamic grasp 
//    double centroid_depth_desired = 0.175;

//    u_d[0] = 320; u_d[1] = 240; //peg-in-hole
//    u_d[0] = 340; u_d[1] = 260; //peg-in-hole
//    u_d[0] = 360; u_d[1] = 280; //peg-in-hole
//    u_d[0] = 400; u_d[1] = 340; //peg-in-hole
//    u_d[0] = 420; u_d[1] = 360; //peg-in-hole
//    u_d[0] = 440; u_d[1] = 370; //peg-in-hole
//    u_d[0] = 400; u_d[1] = 370; //peg-in-hole
//    u_d[0] = 380; u_d[1] = 370; //peg-in-hole
//    u_d[0] = 370; u_d[1] = 370; //peg-in-hole
//    u_d[0] = 370; u_d[1] = 380; //peg-in-hole
//    u_d[0] = 370; u_d[1] = 395; //peg-in-hole
//    u_d[0] = 370; u_d[1] = 390; //peg-in-hole
//    u_d[0] = 370; u_d[1] = 385; //peg-in-hole z=0.3

//    u_d[0] = 370; u_d[1] = 380; //peg-in-hole
//    u_d[0] = 370; u_d[1] = 390; //peg-in-hole
//    u_d[0] = 370; u_d[1] = 400; //peg-in-hole
    u_d[0] = 320; u_d[1] = 240; //peg-in-hole

    //double centroid_depth_desired = 0.5;
//    double centroid_depth_desired = 0.3;
//    double centroid_depth_desired = 0.293;    
//    double centroid_depth_desired = 0.292;   
//    double centroid_depth_desired = 0.291; 
//    double centroid_depth_desired = 0.289;  
    double centroid_depth_desired = 0.293;

    double m_d[3]={0,0,0};
    m_d[0]= (u_d[0]-320)/(658.2874220024545/640);    //(u-u0)/px
    m_d[1]= (u_d[1]-240)/(658.2874220024545/480);    //(v-v0)/py
    m_d[2]= centroid_depth_desired;

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
    //getchar();

    //file for writing image features
    ofstream f1, f2, f3;
    f1.open("/home/harry/catkin_ws/src/ur5_vs/src/results/trackedfeatures.txt",std::ios_base::trunc);
    f2.open("/home/harry/catkin_ws/src/ur5_vs/src/results/joint_velocities.txt",std::ios_base::trunc);
    f3.open("/home/harry/catkin_ws/src/ur5_vs/src/results/error.txt",std::ios_base::trunc);

    f1 << duration << "\t" << m[0] << "\t" << m[1] << "\t" << m[2] << endl;
    f2 << duration << "\t" << theta_dot.at<double>(0) << "\t"<< theta_dot.at<double>(1) << "\t"<< theta_dot.at<double>(2) << "\t"<< theta_dot.at<double>(3) << "\t"<< theta_dot.at<double>(4) << "\t"<< theta_dot.at<double>(5) << endl;  //saving joint velocities velocities to file
    f3 << duration << "\t" << abs(Error.at<double>(0,0)) << "\t"<< abs(Error.at<double>(1,0)) << "\t" << abs(Error.at<double>(2,0)) << "\t" << sqrt_mean_error << endl;  //saving error to file

    double total_time = ros::Time::now().toSec();
    ros::Rate rate(250);

    while(ros::ok())
    {
        double time = ros::Time::now().toSec();
        //feature velocity to camera velocity
        //way 1
        //Vc.at<double>(0,0)= (depth_p[0]/lambda)*Error_PID.at<double>(0,0);
        //Vc.at<double>(1,0)= (depth_p[1]/lambda)*Error_PID.at<double>(1,0);
        //Vc.at<double>(2,0)= -Error_PID.at<double>(2,0);

        //cout << "Velocity: camera_frame  " << Vc << endl;
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t1="<<duration<<"---------------------" << endl;

        //Way-2
        computeImageJacobian(m,depth_p,L);
        cv::invert(L, Linv, cv::DECOMP_SVD);
        Vc = -Linv * Error_PID;
        Vc.at<double>(2,0)= Error_PID.at<double>(2,0);

        cout << "Velocity: camera_frame  " << Vc << endl;
        //Convert velocity from camera frame to end-effector frame
        newconvertVelCameratoEEframe(Vc,Ve);
        Ve.at<double>(2,0)= Error_PID.at<double>(2,0);
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t2="<<duration<<"---------------------" << endl;
        cout << "Velocity: eelink_frame  " << Ve << endl;

        //Convert velocity from end-effector frame to base frame
        newConvertVelEEtoBaseframe(Ve,Vb);
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t3="<<duration<<"---------------------" << endl;
        cout << "Velocity: base_frame " << Vb << endl;

        //Obtaining robot Jacobian
        double th[6]={jp1, jp2, jp3, jp4, jp5, jp6};
        //cout << "current joint angles " << jp1 << " " << jp2 << " " << jp3 << " " << jp4 << " " << jp5 << " " << jp6 << endl;
        //newgetRobotJacobian(th,Jg);
        getRobotJacobian(th,Jg);
        //getRobotJacobian(th,Jg);
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t4="<<duration<<"---------------------" << endl;
        //ROS_INFO_STREAM("Geometric Jacobian " << endl << Jg);

        //Obtaining joint velocities
        cv::invert(Jg, Jg_inv, cv::DECOMP_SVD);

//        Vb.at<double>(0,0)=0.00; //VX，
//        Vb.at<double>(1,0)=0.00; //VY,
//        Vb.at<double>(2,0)=0.00; //VZ,
//        Vb.at<double>(3,0)=0.00; //WX,+shun(yan zhou)
//        Vb.at<double>(4,0)=0.00; //WY,+shun
//        Vb.at<double>(5,0)=0.01; //WY,+shun(yan zhou)

        theta_dot = Jg_inv * Vb;
        cout << "Joint velocity " << theta_dot << endl;
        //f2 << duration << "\t" << theta_dot.at<double>(0) << "\t"<< theta_dot.at<double>(1) << "\t"<< theta_dot.at<double>(2) << "\t"<< theta_dot.at<double>(3) << "\t"<< theta_dot.at<double>(4) << "\t"<< theta_dot.at<double>(5) << endl;  //saving joint velocities velocities to file
        //duration = ros::Time::now().toSec() - total_time;
        //cout << "-------------------------t5="<<duration<<"---------------------" << endl;

        //Sending velocity to controller
        traj.points.clear();
        trajPoint.velocities.clear();
        trajPoint.accelerations.clear();
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
        jointVelPub.publish(traj); //joint speed publisher
        rate.sleep();

        //Sending velocity to controller
        //        control_speed::velocity_control velocity;
        //        if (abs(theta_dot.at<double>(0,0))<vel_limit && abs(theta_dot.at<double>(1,0))<vel_limit && abs(theta_dot.at<double>(2,0))<vel_limit && abs(theta_dot.at<double>(3,0))<vel_limit && abs(theta_dot.at<double>(4,0))<vel_limit && abs(theta_dot.at<double>(5,0))<vel_limit )

        //        {
        //            velocity.vel0.data = theta_dot.at<double>(0);
        //            velocity.vel1.data = theta_dot.at<double>(1);
        //            velocity.vel2.data = theta_dot.at<double>(2);
        //            velocity.vel3.data = theta_dot.at<double>(3);
        //            velocity.vel4.data = theta_dot.at<double>(4);
        //            velocity.vel5.data = theta_dot.at<double>(5);
        //        }
        //        else
        //        {
        //            velocity.vel0.data = 0;
        //            velocity.vel1.data = 0;
        //            velocity.vel2.data = 0;
        //            velocity.vel3.data = 0;
        //            velocity.vel4.data = 0;
        //            velocity.vel5.data = 0;
        //        }

        //        //Publishing velocity
        //        velPub.publish(velocity);

        f2 << duration << "\t" << jv1 << "\t"<< jv2 << "\t"<< jv3 << "\t"<< jv4 << "\t"<< jv5 << "\t"<< jv6 << endl;  //saving joint velocities velocities to file

        //finding current error
        ros::spinOnce();
        u_c[0]=x_point;
        u_c[1]=y_point;

        cout << "xy " << x_point << " " << y_point << endl;
        cout << "centroid_depth " << centroid_depth << endl;

        m[0]= (u_c[0]-320)/(658.2874220024545/640);    //(u-u0)/px
        m[1]= (u_c[1]-240)/(658.2874220024545/480);    //(v-v0)/py

        if (isnan(centroid_depth))
        {
            m[2]= centroid_depth_desired;
            depth_p[0]=centroid_depth_desired;
            depth_p[1]=centroid_depth_desired;
        }
        else
        {
            m[2]= (double)centroid_depth;
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

        duration = ros::Time::now().toSec() - total_time;
        cout << "-------------------------t="<<duration<<"---------------------------" << endl;
        cout << "Current Feature = [" << m[0] << " " << m[1] << " " << m[2] << "]" << endl;
        cout << "Desired Feature = [" << m_d[0] << " " << m_d[1] << " " << m_d[2]  << "]" << endl;
        cout << "Mean Error = " << sqrt_mean_error << endl;
        cout << "-------------------------------------------------------" << endl;
        f1 << duration << "\t" << m[0] << "\t" << m[1] << "\t" << m[2] << "\n";

//        if (sqrt_mean_error <= 23.5)
//        if (sqrt_mean_error <= 21)
//        if (sqrt_mean_error <= 25.4)
//        if (sqrt_mean_error <= 30)  //success1 s=800
        if (sqrt_mean_error <= 54)  //success2 s=1200
        //if (sqrt_mean_error <= 0.0001)
            break;

        //if (sqrt_mean_error <= 1)
        //    double centroid_depth_desired = 0.25;

        //Implement PID
        dt = ros::Time::now().toSec() - time;
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
    }


    f1.close();
    f2.close();
    f3.close();
    trajPoint.velocities.clear();
    trajPoint.accelerations.clear();
    traj.points.clear();
    cout << "Reached Target Feature in " << duration << " seconds" << endl;


//    URScript.data = "movel(p[%f,%f,%f,%f,%f,%f],a=0.14,v=0.15,t=0,r=0)"; //new degreebend 2
//    URDriver_pub.publish(URScript);

//    URScript.data = "movej([2.73580265045166, -1.9942529837237757, 1.907834529876709, 4.748143196105957, 4.7793474197387695, 2.055877447128296],a=0.14,v=0.10)"; //new degreebend 2
//    URDriver_pub.publish(URScript);

//    URScript.data = "movej([2.587106227874756, -1.9527948538409632, 1.9063353538513184, 4.716885566711426, 4.777920246124268, 2.0559253692626953],a=0.14,v=0.10)"; //new degreebend 2
//    URDriver_pub.publish(URScript);


//    URScript.data = "movep([2.464934825897217, -1.914309326802389, 1.8789997100830078, 4.753346920013428, 4.779839038848877, 2.0411970615386963],a=0.14,v=0.15)"; //new degreebend 2
//    URDriver_pub.publish(URScript);

//    URScript.data = "movep([2.425753593444824, -1.894484821950094, 1.8668546676635742, 4.753239154815674, 4.779850959777832, 2.041256904602051],a=0.14,v=0.15)"; //end
//    URDriver_pub.publish(URScript);


//    URScript.data = "movej([2.512878179550171, -1.9078367392169397, 1.8472280502319336, 4.78108024597168, 4.780918121337891, 2.0364840030670166],a=0.14,v=0.15)"; //new degreebend 2
//    URDriver_pub.publish(URScript);

    return 0;
}



