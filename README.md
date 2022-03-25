# IBVS

视觉伺服跟随实验

工作空间在 ibvs_ws下

进入后记得source一下 

启动机器人ROS驱动：

roslaunch ur_modern_driver ur5_bringup.launch robot_ip:=192.168.1.107

启动相机驱动：

roslaunch realsense2_camera rs_rgbd.launch

启动项目跟随程序：

rosrun object_detection camshift_only_tracker

启动机器人视觉伺服控制程序：

rosrun ur5_vs new_ibvs_three_features
