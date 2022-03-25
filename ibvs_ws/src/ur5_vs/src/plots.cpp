#include <iostream>
#include <gnuplot_ci.h>
#include <stdlib.h>

/*--------plot-------*/

using namespace gnuplot_ci;
using namespace std;

//double xb[3] = {0,0,0};
//double dx[3] = {1, 1, 1};

int main(int argc, char** argv)
{

    //Plot of tracked features
    GP_handle G1("/usr/bin/", "time (s)", "Image Features (pixels)");
    G1.gnuplot_cmd("set terminal wxt");
    G1.gnuplot_cmd("plot '/home/harry/catkin_ws/src/ur5_vs/src/results/trackedfeatures.txt'  u 1:2 w l t 'x'");
    G1.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/trackedfeatures.txt'  u 1:3 w l t 'y'");
//    G1.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/trackedfeatures.txt'  u 1:4 w l t 'z'");
    G1.gnuplot_cmd("set terminal postscript eps enhanced color solid lw 1 font 'Arial,22'");
    G1.gnuplot_cmd("set output '/home/harry/catkin_ws/src/ur5_vs/src/results/trackedfeatures.eps'");
    G1.gnuplot_cmd("replot");

    //Plot of Joint velocity
    GP_handle G2("/usr/bin/", "Time (s)", "Joint velocity (rad/s)");
    G2.gnuplot_cmd("set terminal wxt");
//    G2.gnuplot_cmd("plot '/home/harry/catkin_ws/src/ur5_vs/src/results/joint_velocities.txt'  u 1:2 w l t '{/Symbol q}_1'");
//    G2.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/joint_velocities.txt'  u 1:3 w l t '{/Symbol q}_2'");
//    G2.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/joint_velocities.txt'  u 1:4 w l t '{/Symbol q}_3'");
    G2.gnuplot_cmd("plot '/home/harry/catkin_ws/src/ur5_vs/src/results/joint_velocities.txt'  u 1:5 w l t '{/Symbol q}_4'");
    G2.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/joint_velocities.txt'  u 1:6 w l t '{/Symbol q}_5'");
    G2.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/joint_velocities.txt'  u 1:7 w l t '{/Symbol q}_6'");


    G2.gnuplot_cmd("set terminal postscript eps enhanced color solid lw 2 font 'Arial,29'");
    G2.gnuplot_cmd("set output '/home/harry/catkin_ws/src/ur5_vs/src/results/joint_velocities.eps'");
    G2.gnuplot_cmd("replot");


    //Plot of Joint velocity
    GP_handle G4("/usr/bin/", "time (s)", "Camera velocity (m/s)");
    G4.gnuplot_cmd("set terminal wxt");
    G4.gnuplot_cmd("plot '/home/harry/catkin_ws/src/ur5_vs/src/results/camera_vel.txt'  u 1:2 w l t  'vx'");
    G4.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/camera_vel.txt'  u 1:3 w l t 'vy'");
    G4.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/camera_vel.txt'  u 1:4 w l t 'vz'");
    G4.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/camera_vel.txt'  u 1:5 w l t 'wx'");
    G4.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/camera_vel.txt'  u 1:6 w l t 'wy'");
    G4.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/camera_vel.txt'  u 1:7 w l t 'wz'");
    G4.gnuplot_cmd("set terminal postscript eps enhanced color solid lw 1 font 'Arial,22'");
    G4.gnuplot_cmd("set output '/home/harry/catkin_ws/src/ur5_vs/src/results/camera_vel.eps'");
    G4.gnuplot_cmd("replot");

    //Plot of Error in x
    GP_handle G31("/usr/bin/", "time (s)", "Error (pixels)");
    G31.gnuplot_cmd("set terminal wxt");
    G31.gnuplot_cmd("plot '/home/harry/catkin_ws/src/ur5_vs/src/results/error.txt'  u 1:2 w l t 'e_x'");
    G31.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/error.txt'  u 1:3 w l t 'e_y'");
    G31.gnuplot_cmd("replot '/home/harry/catkin_ws/src/ur5_vs/src/results/error.txt'  u 1:5 w l t 'norm error");
    G31.gnuplot_cmd("set terminal postscript eps enhanced color solid lw 1.5 font 'Arial,22'");
    G31.gnuplot_cmd("set output '/home/harry/catkin_ws/src/ur5_vs/src/results/error_x.eps'");
    G31.gnuplot_cmd("replot");

    //Plot of Error in y
    GP_handle G32("/usr/bin/", "time (s)", "Error (pixels)");
    G32.gnuplot_cmd("set terminal wxt");
    G32.gnuplot_cmd("plot '/home/harry/catkin_ws/src/ur5_vs/src/results/error.txt'  u 1:3 w l t 'e_y'");
    G32.gnuplot_cmd("set terminal postscript eps enhanced color solid lw 1.5 font 'Arial,22'");
    G32.gnuplot_cmd("set output '/home/harry/catkin_ws/src/ur5_vs/src/results/error_y.eps'");
    G32.gnuplot_cmd("replot");

    //Plot of Error in z
    GP_handle G33("/usr/bin/", "time (s)", "Error (m)");
    G33.gnuplot_cmd("set terminal wxt");
    G33.gnuplot_cmd("plot '/home/harry/catkin_ws/src/ur5_vs/src/results/error.txt'  u 1:4 w l t 'e_z'");
    G33.gnuplot_cmd("set terminal postscript eps enhanced color solid lw 1.5 font 'Arial,22'");
    G33.gnuplot_cmd("set output '/home/harry/catkin_ws/src/ur5_vs/src/results/error_z.eps'");
    G33.gnuplot_cmd("replot");

    //Plot of norm-error
    GP_handle G34("/usr/bin/", "time (s)", "Error (pixels)");
    G34.gnuplot_cmd("set terminal wxt");
    G34.gnuplot_cmd("plot '/home/harry/catkin_ws/src/ur5_vs/src/results/error.txt'  u 1:5 w l t 'norm error");
    G34.gnuplot_cmd("set terminal postscript eps enhanced color solid lw 1.5 font 'Arial,22'");
    G34.gnuplot_cmd("set output '/home/harry/catkin_ws/src/ur5_vs/src/results/norm-error.eps'");
    G34.gnuplot_cmd("replot");

    cout << "Press enter to save plots" << endl;
    getchar();
    return 0;
}

