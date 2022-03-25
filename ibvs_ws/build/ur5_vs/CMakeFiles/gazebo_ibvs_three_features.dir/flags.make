# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# compile CXX with /usr/bin/c++
CXX_FLAGS = -std=c++11   -std=c++11

CXX_DEFINES = -DLIBBULLET_VERSION=2.87 -DLIBBULLET_VERSION_GT_282 -DROSCONSOLE_BACKEND_LOG4CXX -DROS_BUILD_SHARED_LIBS=1 -DROS_PACKAGE_NAME=\"ur5_vs\"

CXX_INCLUDES = -I/home/harry/ibvs_ws/devel/include -I/opt/ros/melodic/include -I/opt/ros/melodic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp -I/usr/include/gazebo-9 -I/usr/include/sdformat-6.0 -I/usr/include/ignition/transport4 -I/usr/include/ignition/msgs1 -I/usr/include/ignition/fuel_tools1 -I/usr/include/x86_64-linux-gnu -I/usr/lib/x86_64-linux-gnu/libzip/include -I/usr/include/ignition/common1 -I/usr/include/ignition/math4 -I/usr/include/uuid -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/opt/ros/melodic/share/orocos_kdl/cmake/../../../include -isystem /usr/include/opencv -I/usr/include/eigen3 -I/usr/include/pcl-1.8 -I/usr/include/vtk-6.3 -I/usr/include/freetype2 -I/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi -I/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/opal/mca/event/libevent2022/libevent -I/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/opal/mca/event/libevent2022/libevent/include -I/usr/lib/x86_64-linux-gnu/openmpi/include -I/usr/include/python2.7 -I/usr/include/hdf5/openmpi -I/usr/include/libxml2 -I/usr/include/jsoncpp -I/usr/include/tcl -I/usr/include/ni -I/usr/include/openni2 -I/home/harry/ibvs_ws/src/ur5_vs/include -I/opt/ros/melodic/lib/libimage_transport.so -I/opt/ros/melodic/lib/libcv_bridge.so -I/usr/lib/x86_64-linux-gnu/libopencv_core.so.3.2.0 -I/usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.3.2.0 -I/usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.3.2.0 -I/opt/ros/melodic/lib/libpcl_ros_filter.so -I/opt/ros/melodic/lib/libpcl_ros_tf.so -I/home/harry/ibvs_ws/src/ur5_vs/optimized -I/usr/lib/x86_64-linux-gnu/libpcl_kdtree.so -I/home/harry/ibvs_ws/src/ur5_vs/debug -I/usr/lib/x86_64-linux-gnu/libpcl_search.so -I/usr/lib/x86_64-linux-gnu/libpcl_features.so -I/usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so -I/usr/lib/x86_64-linux-gnu/libpcl_filters.so -I/usr/lib/x86_64-linux-gnu/libpcl_ml.so -I/usr/lib/x86_64-linux-gnu/libpcl_segmentation.so -I/usr/lib/x86_64-linux-gnu/libpcl_surface.so -I/usr/lib/x86_64-linux-gnu/libqhull.so -I/usr/lib/x86_64-linux-gnu/libflann_cpp_s.a -I/opt/ros/melodic/lib/libnodeletlib.so -I/opt/ros/melodic/lib/libbondcpp.so -I/usr/lib/x86_64-linux-gnu/libuuid.so -I/opt/ros/melodic/lib/librosbag.so -I/opt/ros/melodic/lib/librosbag_storage.so -I/opt/ros/melodic/lib/libroslz4.so -I/usr/lib/x86_64-linux-gnu/liblz4.so -I/opt/ros/melodic/lib/libtopic_tools.so -I/usr/lib/x86_64-linux-gnu/libpcl_common.so -I/usr/lib/x86_64-linux-gnu/libpcl_octree.so -I/usr/lib/x86_64-linux-gnu/libpcl_io.so -I/usr/lib/x86_64-linux-gnu/libboost_serialization.so -I/usr/lib/libOpenNI.so -I/usr/lib/libOpenNI2.so -I/usr/lib/x86_64-linux-gnu/libvtkChartsCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonColor-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonMath-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtksys-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonMisc-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonSystem-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkInfovisCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingFourier-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkalglib-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersSources-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libfreetype.so -I/usr/lib/x86_64-linux-gnu/libz.so -I/usr/lib/x86_64-linux-gnu/libvtkftgl-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkDICOMParser-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkDomainsChemistry-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOXML-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOGeometry-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libexpat.so -I/usr/lib/x86_64-linux-gnu/libvtkFiltersAMR-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkParallelCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOLegacy-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersFlowPaths-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersGeneric-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersHybrid-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingSources-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersHyperTree-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersImaging-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingGeneral-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersParallel-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelFlowPaths-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkParallelMPI-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelGeometry-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelImaging-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelMPI-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersParallelStatistics-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersProgrammable-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersPython-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkWrappingPython27Core-6.3.so.6.3.0 -I/usr/lib/libvtkWrappingTools-6.3.a -I/usr/lib/x86_64-linux-gnu/libvtkFiltersReebGraph-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersSMP-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersSelection-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersTexture-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkFiltersVerdict-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkverdict-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkGUISupportQt-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingHybrid-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOImage-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkmetaio-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libjpeg.so -I/usr/lib/x86_64-linux-gnu/libpng.so -I/usr/lib/x86_64-linux-gnu/libtiff.so -I/usr/lib/x86_64-linux-gnu/libvtkGUISupportQtOpenGL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkGUISupportQtSQL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOSQL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libsqlite3.so -I/usr/lib/x86_64-linux-gnu/libvtkGUISupportQtWebkit-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkViewsQt-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkViewsInfovis-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkInfovisLayout-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkInfovisBoostGraphAlgorithms-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingLabel-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkViewsCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkInteractionWidgets-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingColor-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingVolume-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkGeovisCore-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libproj.so -I/usr/lib/x86_64-linux-gnu/libvtkIOAMR-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5.so -I/usr/lib/x86_64-linux-gnu/libsz.so -I/usr/lib/x86_64-linux-gnu/libm.so -I/usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so -I/usr/lib/x86_64-linux-gnu/libvtkIOEnSight-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOExodus-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkexoIIc-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libnetcdf_c++.so -I/usr/lib/x86_64-linux-gnu/libnetcdf.so -I/usr/lib/x86_64-linux-gnu/libvtkIOExport-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingGL2PS-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libgl2ps.so -I/usr/lib/x86_64-linux-gnu/libvtkIOFFMPEG-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOMovie-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libtheoraenc.so -I/usr/lib/x86_64-linux-gnu/libtheoradec.so -I/usr/lib/x86_64-linux-gnu/libogg.so -I/usr/lib/x86_64-linux-gnu/libvtkIOGDAL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOGeoJSON-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOImport-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOInfovis-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libxml2.so -I/usr/lib/x86_64-linux-gnu/libvtkIOLSDyna-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOMINC-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOMPIImage-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOMPIParallel-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOParallel-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIONetCDF-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libjsoncpp.so -I/usr/lib/x86_64-linux-gnu/libvtkIOMySQL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOODBC-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOPLY-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOParallelExodus-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOParallelLSDyna-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOParallelNetCDF-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOParallelXML-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOPostgreSQL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOVPIC-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkVPIC-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOVideo-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkIOXdmf2-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkxdmf2-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingMath-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingMorphological-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingStatistics-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkImagingStencil-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkInteractionImage-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkLocalExample-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkParallelMPI4Py-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkPythonInterpreter-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingExternal-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingFreeTypeFontConfig-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingImage-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingLIC-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingLOD-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingMatplotlib-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingParallel-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingParallelLIC-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingQt-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingVolumeAMR-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkRenderingVolumeOpenGL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkTestingGenericBridge-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkTestingIOSQL-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkTestingRendering-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkViewsContext2D-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkViewsGeovis-6.3.so.6.3.0 -I/usr/lib/x86_64-linux-gnu/libvtkWrappingJava-6.3.so.6.3.0 -I/opt/ros/melodic/lib/librobot_state_publisher_solver.so -I/opt/ros/melodic/lib/libjoint_state_listener.so -I/opt/ros/melodic/lib/libmoveit_common_planning_interface_objects.so -I/opt/ros/melodic/lib/libmoveit_planning_scene_interface.so -I/opt/ros/melodic/lib/libmoveit_move_group_interface.so -I/opt/ros/melodic/lib/libmoveit_py_bindings_tools.so -I/opt/ros/melodic/lib/libmoveit_cpp.so -I/opt/ros/melodic/lib/libmoveit_warehouse.so -I/opt/ros/melodic/lib/libwarehouse_ros.so -I/opt/ros/melodic/lib/libtf.so -I/opt/ros/melodic/lib/libmoveit_pick_place_planner.so -I/opt/ros/melodic/lib/libmoveit_move_group_capabilities_base.so -I/opt/ros/melodic/lib/libmoveit_rdf_loader.so -I/opt/ros/melodic/lib/libmoveit_kinematics_plugin_loader.so -I/opt/ros/melodic/lib/libmoveit_robot_model_loader.so -I/opt/ros/melodic/lib/libmoveit_constraint_sampler_manager_loader.so -I/opt/ros/melodic/lib/libmoveit_planning_pipeline.so -I/opt/ros/melodic/lib/libmoveit_trajectory_execution_manager.so -I/opt/ros/melodic/lib/libmoveit_plan_execution.so -I/opt/ros/melodic/lib/libmoveit_planning_scene_monitor.so -I/opt/ros/melodic/lib/libmoveit_collision_plugin_loader.so -I/opt/ros/melodic/lib/libdynamic_reconfigure_config_init_mutex.so -I/opt/ros/melodic/lib/libmoveit_ros_occupancy_map_monitor.so -I/opt/ros/melodic/lib/libmoveit_exceptions.so -I/opt/ros/melodic/lib/libmoveit_background_processing.so -I/opt/ros/melodic/lib/libmoveit_kinematics_base.so -I/opt/ros/melodic/lib/libmoveit_robot_model.so -I/opt/ros/melodic/lib/libmoveit_transforms.so -I/opt/ros/melodic/lib/libmoveit_robot_state.so -I/opt/ros/melodic/lib/libmoveit_robot_trajectory.so -I/opt/ros/melodic/lib/libmoveit_planning_interface.so -I/opt/ros/melodic/lib/libmoveit_collision_detection.so -I/opt/ros/melodic/lib/libmoveit_collision_detection_fcl.so -I/opt/ros/melodic/lib/libmoveit_kinematic_constraints.so -I/opt/ros/melodic/lib/libmoveit_planning_scene.so -I/opt/ros/melodic/lib/libmoveit_constraint_samplers.so -I/opt/ros/melodic/lib/libmoveit_planning_request_adapter.so -I/opt/ros/melodic/lib/libmoveit_profiler.so -I/opt/ros/melodic/lib/libmoveit_python_tools.so -I/opt/ros/melodic/lib/libmoveit_trajectory_processing.so -I/opt/ros/melodic/lib/libmoveit_distance_field.so -I/opt/ros/melodic/lib/libmoveit_collision_distance_field.so -I/opt/ros/melodic/lib/libmoveit_kinematics_metrics.so -I/opt/ros/melodic/lib/libmoveit_dynamics_solver.so -I/opt/ros/melodic/lib/libmoveit_utils.so -I/opt/ros/melodic/lib/libmoveit_test_utils.so -I/usr/lib/x86_64-linux-gnu/libboost_iostreams.so -I/usr/lib/x86_64-linux-gnu/libfcl.so -I/opt/ros/melodic/lib/libkdl_parser.so -I/opt/ros/melodic/lib/liburdf.so -I/usr/lib/x86_64-linux-gnu/liburdfdom_sensor.so -I/usr/lib/x86_64-linux-gnu/liburdfdom_model_state.so -I/usr/lib/x86_64-linux-gnu/liburdfdom_model.so -I/usr/lib/x86_64-linux-gnu/liburdfdom_world.so -I/opt/ros/melodic/lib/librosconsole_bridge.so -I/opt/ros/melodic/lib/libsrdfdom.so -I/usr/lib/x86_64-linux-gnu/libtinyxml.so -I/opt/ros/melodic/lib/libgeometric_shapes.so -I/opt/ros/melodic/lib/liboctomap.so -I/opt/ros/melodic/lib/liboctomath.so -I/opt/ros/melodic/lib/librandom_numbers.so -I/opt/ros/melodic/lib/libclass_loader.so -I/usr/lib/libPocoFoundation.so -I/usr/lib/x86_64-linux-gnu/libdl.so -I/opt/ros/melodic/lib/libroslib.so -I/opt/ros/melodic/lib/librospack.so -I/usr/lib/x86_64-linux-gnu/libpython2.7.so -I/usr/lib/x86_64-linux-gnu/libboost_program_options.so -I/usr/lib/x86_64-linux-gnu/libtinyxml2.so -I/opt/ros/melodic/lib/liborocos-kdl.so -I/opt/ros/melodic/lib/liborocos-kdl.so.1.4.0 -I/opt/ros/melodic/lib/libtf2_ros.so -I/opt/ros/melodic/lib/libactionlib.so -I/opt/ros/melodic/lib/libmessage_filters.so -I/opt/ros/melodic/lib/libroscpp.so -I/usr/lib/x86_64-linux-gnu/libboost_filesystem.so -I/opt/ros/melodic/lib/librosconsole.so -I/opt/ros/melodic/lib/librosconsole_log4cxx.so -I/opt/ros/melodic/lib/librosconsole_backend_interface.so -I/usr/lib/x86_64-linux-gnu/liblog4cxx.so -I/usr/lib/x86_64-linux-gnu/libboost_regex.so -I/opt/ros/melodic/lib/libxmlrpcpp.so -I/opt/ros/melodic/lib/libtf2.so -I/opt/ros/melodic/lib/libroscpp_serialization.so -I/opt/ros/melodic/lib/librostime.so -I/opt/ros/melodic/lib/libcpp_common.so -I/usr/lib/x86_64-linux-gnu/libboost_system.so -I/usr/lib/x86_64-linux-gnu/libboost_thread.so -I/usr/lib/x86_64-linux-gnu/libboost_chrono.so -I/usr/lib/x86_64-linux-gnu/libboost_date_time.so -I/usr/lib/x86_64-linux-gnu/libboost_atomic.so -I/usr/lib/x86_64-linux-gnu/libpthread.so -I/usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4 -I/home/harry/catkin_ws/src/ur5_vs/msgs 

