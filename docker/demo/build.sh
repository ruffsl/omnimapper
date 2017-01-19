#!/bin/bash
# set -e
echo "if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi" >> ~/.bashrc
echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
echo "export ROS_PACKAGE_PATH=/home/dox/omnimapper/ros/:${ROS_PACKAGE_PATH}" >> ~/.bash_aliases

source /opt/ros/${ROS_DISTRO}/setup.bash
export ROS_PACKAGE_PATH=/root/omnimapper/ros/:${ROS_PACKAGE_PATH}

roscd omnimapper_ros

rosmake

cd build

cmake -DEIGEN_INCLUDE_DIRS="/root/gtsam/gtsam/3rdparty/Eigen" ..

make -j$(nproc)
