FROM cogrob/omnimapper:opencv
MAINTAINER Cognitive Robotics "http://cogrob.org/"

WORKDIR /root

# clone omnimapper project
RUN mkdir -p catkin_ws/src \
  && cd catkin_ws/src \
  && git clone https://github.com/personalrobotics/apriltags.git

# build omnimapper ros wrapper
ADD build.sh catkin_ws/src/apriltags/build.sh
RUN ./catkin_ws/src/apriltags/build.sh
