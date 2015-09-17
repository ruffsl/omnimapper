#!/bin/bash
# set -e
echo "if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi" >> ~/.bashrc
echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc
echo "source /root/Desktop/catkin_ws/devel/setup.bash" >> ~/.bashrc
echo "export ROS_PACKAGE_PATH=/root/Desktop/omnimapper_dev/ros/:\${ROS_PACKAGE_PATH}" >> ~/.bashrc

source /opt/ros/indigo/setup.bash
source /root/catkin_ws/devel/setup.bash
export ROS_PACKAGE_PATH=/root/omnimapper_dev/ros/:${ROS_PACKAGE_PATH}

roscd omnimapper_ros

rosmake

cd build

cmake -DEIGEN_INCLUDE_DIRS="/root/gtsam/gtsam/3rdparty/Eigen" ..

make -j$(nproc)
