cmake_minimum_required(VERSION 2.8.12)
project(yolov3_pytorch_ros)

find_package(catkin REQUIRED
  COMPONENTS
    geometry_msgs
    sensor_msgs
    std_msgs
    message_generation)

add_message_files(
  FILES
    BoundingBox.msg
    BoundingBoxes.msg
    Target.msg
)

generate_messages(
  DEPENDENCIES
    geometry_msgs
    sensor_msgs
    std_msgs
)

catkin_package()

include_directories()
