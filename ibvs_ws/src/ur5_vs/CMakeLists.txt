cmake_minimum_required(VERSION 2.8.3)
project(ur5_vs)
#add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    std_msgs
    roslib
    geometry_msgs
    image_transport
    cv_bridge
    visualization_msgs
    sensor_msgs
    tf
    actionlib
    control_msgs
    message_generation
    pcl_ros
    pcl_conversions
    joint_state_publisher
    robot_state_publisher
    object_detection
    moveit_ros_planning_interface
    moveit_ros_move_group

  )

find_package(OpenCV)
#find_package(PCL REQUIRED)
find_package(gazebo REQUIRED)
find_package(gazebo_msgs)

find_package(roscpp REQUIRED)
find_package(std_msgs REQUIRED)
include_directories(${roscpp_INCLUDE_DIRS})
include_directories(${std_msgs_INCLUDE_DIRS})


include (FindPkgConfig)
if (PKG_CONFIG_FOUND)
  pkg_check_modules(GAZEBO gazebo)
endif()

include(FindBoost)

include_directories(
${GAZEBO_INCLUDE_DIRS}
${catkin_INCLUDE_DIRS}
${OpenCV_INCLUDE_DIR}
${PCL_INCLUDE_DIR}
include)

find_package(Boost ${MIN_BOOST_VERSION} REQUIRED system filesystem regex)
find_package(Protobuf REQUIRED)

include_directories(${GAZEBO_INCLUDE_DIRS} ${catkin_LIBRARIES} /home/harry/catkin_ws/src/ur5_vs/msgs)
link_directories(${GAZEBO_LIBRARY_DIRS} ${catkin_LIBRARIES} ${CMAKE_CURRENT_BINARY_DIR}/msgs)
#add_subdirectory(msgs)
link_directories(${GAZEBO_LIBRARY_DIRS} ${PCL_LIBRARY_DIRS})
list(APPEND CMAKE_CXX_FLAGS "${GAZEBO_CXX_FLAGS}")

add_message_files(
    FILES
   joint_vel.msg
   sim_variables.msg
   joint_angles.msg
   joint_states.msg
   states.msg
 )

generate_messages(
   DEPENDENCIES
   std_msgs
 )

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES ur5_ik
  CATKIN_DEPENDS roscpp rospy std_msgs  message_runtime
  DEPENDS system_lib
    geometry_msgs
    visualization_msgs
    message_runtime
)
#catkin_package(
 #  INCLUDE_DIRS include
 #  LIBRARIES opencv_object_tracking
#  CATKIN_DEPENDS message_generation roscpp std_msgs geometry_msgs message_runtime image_transport cv_bridge
 #  DEPENDS system_lib
# )


add_executable(new_ibvs_one_features src/new_ibvs_one_features.cpp include/my_funcs.h)
add_dependencies(new_ibvs_one_features ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(new_ibvs_one_features ${catkin_LIBRARIES} ${OpenCV_LIBS} ${PCL_LIBRARIES})


add_executable(new_ibvs_two_features src/new_ibvs_two_features.cpp include/my_funcs.h)
add_dependencies(new_ibvs_two_features ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(new_ibvs_two_features ${catkin_LIBRARIES} ${OpenCV_LIBS} ${PCL_LIBRARIES})

#IBVS with 3 features (By Deepak Raina)
add_executable(new_ibvs_three_features src/new_ibvs_three_features.cpp include/my_funcs.h)
add_dependencies(new_ibvs_three_features ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(new_ibvs_three_features ${catkin_LIBRARIES} ${OpenCV_LIBS} ${PCL_LIBRARIES})


#executable for direct velocity test on gazebo-robot
add_executable(gazebo_velocity_test_direct src/gazebo_velocity_test_direct.cpp include/my_funcs.h)
add_dependencies(gazebo_velocity_test_direct ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(gazebo_velocity_test_direct ${catkin_LIBRARIES} ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GAZEBO_LIBRARIES} ${Boost_LIBRARIES} ${PROTOBUF_LIBRARIES})

add_executable(gazebo_reconfigure_robot src/gazebo_reconfigure_robot.cpp include/my_funcs.h)
add_dependencies(gazebo_reconfigure_robot ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(gazebo_reconfigure_robot ${catkin_LIBRARIES} ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GAZEBO_LIBRARIES} ${Boost_LIBRARIES} ${PROTOBUF_LIBRARIES})


add_executable(gazebo_ibvs_two_features src/gazebo_ibvs_two_features.cpp include/my_funcs.h)
add_dependencies(gazebo_ibvs_two_features ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(gazebo_ibvs_two_features ${catkin_LIBRARIES} ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GAZEBO_LIBRARIES} ${Boost_LIBRARIES} ${PROTOBUF_LIBRARIES})

add_executable(gazebo_ibvs_three_features src/gazebo_ibvs_three_features.cpp include/my_funcs.h)
add_dependencies(gazebo_ibvs_three_features ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(gazebo_ibvs_three_features ${catkin_LIBRARIES} ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GAZEBO_LIBRARIES} ${Boost_LIBRARIES} ${PROTOBUF_LIBRARIES})

add_executable(gazebo_ibvs_centroid_area src/gazebo_ibvs_centroid_area.cpp include/my_funcs.h)
add_dependencies(gazebo_ibvs_centroid_area ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(gazebo_ibvs_centroid_area ${catkin_LIBRARIES} ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GAZEBO_LIBRARIES} ${Boost_LIBRARIES} ${PROTOBUF_LIBRARIES})

add_executable(gazebo_ibvs_area_intmatrix src/gazebo_ibvs_area_intmatrix.cpp include/my_funcs.h)
add_dependencies(gazebo_ibvs_area_intmatrix ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(gazebo_ibvs_area_intmatrix ${catkin_LIBRARIES} ${OpenCV_LIBS} ${OPENGL_LIBRARIES} ${GAZEBO_LIBRARIES} ${Boost_LIBRARIES} ${PROTOBUF_LIBRARIES})

#executable for direct velocity test on gazebo-robot through ROS-transport mechanism SHARED 
add_library(velocity_controller_ros  src/velocity_controller_ros.cpp )
add_dependencies(velocity_controller_ros ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(velocity_controller_ros ${catkin_LIBRARIES} ${GAZEBO_libraries} ${roscpp_LIBRARIES})

add_library(ball_animation_plugin src/ball_animation_plugin.cpp)
add_dependencies(ball_animation_plugin ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(ball_animation_plugin ${catkin_LIBRARIES} ${GAZEBO_libraries} ${roscpp_LIBRARIES})

#executable for plotting features
add_executable(plots src/plots.cpp src/gnuplot_ci.cpp include/gnuplot_ci.h)
add_dependencies(plots ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(plots ${catkin_LIBRARIES})

add_definitions(-std=c++11)

# Linking GSL libraries
find_package(PkgConfig REQUIRED)
pkg_check_modules(gsl REQUIRED gsl)
