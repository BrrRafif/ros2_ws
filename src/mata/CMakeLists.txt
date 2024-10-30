cmake_minimum_required(VERSION 3.8)
project(mata)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# Find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(cv_bridge REQUIRED)
find_package(OpenCV REQUIRED)  # Menambahkan OpenCV sebagai dependensi

# Include directories
include_directories(include)

# Add executable
add_executable(video_masking_node src/main.cpp)

# Link libraries
ament_target_dependencies(video_masking_node rclcpp sensor_msgs cv_bridge OpenCV)

install(TARGETS
  video_masking_node
  DESTINATION lib/${PROJECT_NAME})

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # Mengabaikan linter yang memeriksa hak cipta
  set(ament_cmake_copyright_FOUND TRUE)
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
