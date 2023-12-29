FROM ros:humble-ros-base

RUN apt-get -y update && apt-get -y upgrade && \
    mkdir home/ros_ws

WORKDIR /home/ros_ws
