# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/berwyn/ros2_ws/mata

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/berwyn/ros2_ws/build/mata

# Include any dependencies generated for this target.
include CMakeFiles/video_masking_node.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/video_masking_node.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/video_masking_node.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/video_masking_node.dir/flags.make

CMakeFiles/video_masking_node.dir/src/main.cpp.o: CMakeFiles/video_masking_node.dir/flags.make
CMakeFiles/video_masking_node.dir/src/main.cpp.o: /home/berwyn/ros2_ws/mata/src/main.cpp
CMakeFiles/video_masking_node.dir/src/main.cpp.o: CMakeFiles/video_masking_node.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/berwyn/ros2_ws/build/mata/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/video_masking_node.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/video_masking_node.dir/src/main.cpp.o -MF CMakeFiles/video_masking_node.dir/src/main.cpp.o.d -o CMakeFiles/video_masking_node.dir/src/main.cpp.o -c /home/berwyn/ros2_ws/mata/src/main.cpp

CMakeFiles/video_masking_node.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/video_masking_node.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/berwyn/ros2_ws/mata/src/main.cpp > CMakeFiles/video_masking_node.dir/src/main.cpp.i

CMakeFiles/video_masking_node.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/video_masking_node.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/berwyn/ros2_ws/mata/src/main.cpp -o CMakeFiles/video_masking_node.dir/src/main.cpp.s

# Object files for target video_masking_node
video_masking_node_OBJECTS = \
"CMakeFiles/video_masking_node.dir/src/main.cpp.o"

# External object files for target video_masking_node
video_masking_node_EXTERNAL_OBJECTS =

video_masking_node: CMakeFiles/video_masking_node.dir/src/main.cpp.o
video_masking_node: CMakeFiles/video_masking_node.dir/build.make
video_masking_node: /opt/ros/humble/lib/librclcpp.so
video_masking_node: /opt/ros/humble/lib/libcv_bridge.so
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_alphamat.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_aruco.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_barcode.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_bgsegm.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_bioinspired.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_ccalib.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_dnn_objdetect.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_dnn_superres.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_dpm.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_face.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_freetype.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_fuzzy.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_hdf.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_hfs.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_img_hash.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_intensity_transform.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_line_descriptor.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_mcc.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_quality.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_rapid.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_reg.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_rgbd.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_saliency.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_shape.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_stereo.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_structured_light.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_surface_matching.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_tracking.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_viz.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_wechat_qrcode.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_xobjdetect.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_xphoto.so.4.5.4d
video_masking_node: /opt/ros/humble/lib/liblibstatistics_collector.so
video_masking_node: /opt/ros/humble/lib/librcl.so
video_masking_node: /opt/ros/humble/lib/librmw_implementation.so
video_masking_node: /opt/ros/humble/lib/libament_index_cpp.so
video_masking_node: /opt/ros/humble/lib/librcl_logging_spdlog.so
video_masking_node: /opt/ros/humble/lib/librcl_logging_interface.so
video_masking_node: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_fastrtps_c.so
video_masking_node: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_introspection_c.so
video_masking_node: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_fastrtps_cpp.so
video_masking_node: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_introspection_cpp.so
video_masking_node: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_cpp.so
video_masking_node: /opt/ros/humble/lib/librcl_interfaces__rosidl_generator_py.so
video_masking_node: /opt/ros/humble/lib/librcl_interfaces__rosidl_typesupport_c.so
video_masking_node: /opt/ros/humble/lib/librcl_interfaces__rosidl_generator_c.so
video_masking_node: /opt/ros/humble/lib/librcl_yaml_param_parser.so
video_masking_node: /opt/ros/humble/lib/libyaml.so
video_masking_node: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_fastrtps_c.so
video_masking_node: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_fastrtps_cpp.so
video_masking_node: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_introspection_c.so
video_masking_node: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_introspection_cpp.so
video_masking_node: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_cpp.so
video_masking_node: /opt/ros/humble/lib/librosgraph_msgs__rosidl_generator_py.so
video_masking_node: /opt/ros/humble/lib/librosgraph_msgs__rosidl_typesupport_c.so
video_masking_node: /opt/ros/humble/lib/librosgraph_msgs__rosidl_generator_c.so
video_masking_node: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_fastrtps_c.so
video_masking_node: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_fastrtps_cpp.so
video_masking_node: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_introspection_c.so
video_masking_node: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_introspection_cpp.so
video_masking_node: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_cpp.so
video_masking_node: /opt/ros/humble/lib/libstatistics_msgs__rosidl_generator_py.so
video_masking_node: /opt/ros/humble/lib/libstatistics_msgs__rosidl_typesupport_c.so
video_masking_node: /opt/ros/humble/lib/libstatistics_msgs__rosidl_generator_c.so
video_masking_node: /opt/ros/humble/lib/libtracetools.so
video_masking_node: /opt/ros/humble/lib/libsensor_msgs__rosidl_typesupport_fastrtps_c.so
video_masking_node: /opt/ros/humble/lib/libgeometry_msgs__rosidl_typesupport_fastrtps_c.so
video_masking_node: /opt/ros/humble/lib/libstd_msgs__rosidl_typesupport_fastrtps_c.so
video_masking_node: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_fastrtps_c.so
video_masking_node: /opt/ros/humble/lib/librosidl_typesupport_fastrtps_c.so
video_masking_node: /opt/ros/humble/lib/libsensor_msgs__rosidl_typesupport_fastrtps_cpp.so
video_masking_node: /opt/ros/humble/lib/libgeometry_msgs__rosidl_typesupport_fastrtps_cpp.so
video_masking_node: /opt/ros/humble/lib/libstd_msgs__rosidl_typesupport_fastrtps_cpp.so
video_masking_node: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_fastrtps_cpp.so
video_masking_node: /opt/ros/humble/lib/librosidl_typesupport_fastrtps_cpp.so
video_masking_node: /opt/ros/humble/lib/libfastcdr.so.1.0.24
video_masking_node: /opt/ros/humble/lib/librmw.so
video_masking_node: /opt/ros/humble/lib/libsensor_msgs__rosidl_typesupport_introspection_c.so
video_masking_node: /opt/ros/humble/lib/libgeometry_msgs__rosidl_typesupport_introspection_c.so
video_masking_node: /opt/ros/humble/lib/libstd_msgs__rosidl_typesupport_introspection_c.so
video_masking_node: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_introspection_c.so
video_masking_node: /opt/ros/humble/lib/libsensor_msgs__rosidl_typesupport_introspection_cpp.so
video_masking_node: /opt/ros/humble/lib/libgeometry_msgs__rosidl_typesupport_introspection_cpp.so
video_masking_node: /opt/ros/humble/lib/libstd_msgs__rosidl_typesupport_introspection_cpp.so
video_masking_node: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_introspection_cpp.so
video_masking_node: /opt/ros/humble/lib/librosidl_typesupport_introspection_cpp.so
video_masking_node: /opt/ros/humble/lib/librosidl_typesupport_introspection_c.so
video_masking_node: /opt/ros/humble/lib/libsensor_msgs__rosidl_generator_py.so
video_masking_node: /opt/ros/humble/lib/libsensor_msgs__rosidl_typesupport_c.so
video_masking_node: /opt/ros/humble/lib/libsensor_msgs__rosidl_generator_c.so
video_masking_node: /opt/ros/humble/lib/libgeometry_msgs__rosidl_generator_py.so
video_masking_node: /opt/ros/humble/lib/libgeometry_msgs__rosidl_typesupport_c.so
video_masking_node: /opt/ros/humble/lib/libgeometry_msgs__rosidl_generator_c.so
video_masking_node: /opt/ros/humble/lib/libstd_msgs__rosidl_generator_py.so
video_masking_node: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_generator_py.so
video_masking_node: /opt/ros/humble/lib/libstd_msgs__rosidl_typesupport_c.so
video_masking_node: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_c.so
video_masking_node: /opt/ros/humble/lib/libstd_msgs__rosidl_generator_c.so
video_masking_node: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_generator_c.so
video_masking_node: /usr/lib/x86_64-linux-gnu/libpython3.10.so
video_masking_node: /opt/ros/humble/lib/libsensor_msgs__rosidl_typesupport_cpp.so
video_masking_node: /opt/ros/humble/lib/libgeometry_msgs__rosidl_typesupport_cpp.so
video_masking_node: /opt/ros/humble/lib/libstd_msgs__rosidl_typesupport_cpp.so
video_masking_node: /opt/ros/humble/lib/libbuiltin_interfaces__rosidl_typesupport_cpp.so
video_masking_node: /opt/ros/humble/lib/librosidl_typesupport_cpp.so
video_masking_node: /opt/ros/humble/lib/librosidl_typesupport_c.so
video_masking_node: /opt/ros/humble/lib/librosidl_runtime_c.so
video_masking_node: /opt/ros/humble/lib/librcpputils.so
video_masking_node: /opt/ros/humble/lib/librcutils.so
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_datasets.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_plot.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_text.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_phase_unwrapping.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_optflow.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_ximgproc.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_videoio.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_imgcodecs.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_dnn.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.4.5.4d
video_masking_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.4.5.4d
video_masking_node: CMakeFiles/video_masking_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/berwyn/ros2_ws/build/mata/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable video_masking_node"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/video_masking_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/video_masking_node.dir/build: video_masking_node
.PHONY : CMakeFiles/video_masking_node.dir/build

CMakeFiles/video_masking_node.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/video_masking_node.dir/cmake_clean.cmake
.PHONY : CMakeFiles/video_masking_node.dir/clean

CMakeFiles/video_masking_node.dir/depend:
	cd /home/berwyn/ros2_ws/build/mata && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/berwyn/ros2_ws/mata /home/berwyn/ros2_ws/mata /home/berwyn/ros2_ws/build/mata /home/berwyn/ros2_ws/build/mata /home/berwyn/ros2_ws/build/mata/CMakeFiles/video_masking_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/video_masking_node.dir/depend

