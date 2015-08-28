FROM cogrob/omnimapper:ebt
MAINTAINER Cognitive Robotics "http://cogrob.org/"

WORKDIR /root

# clone and build Sophus - Lie groups
RUN mkdir -p workspace \
  && cd workspace \
  && git clone https://github.com/strasdat/Sophus.git \
  && cd Sophus \
  && git checkout a621ff \
  && mkdir build \
  && cd build \
  && cmake .. \
  && make -j$(nproc)

# clone and build Fast - Corner Detector
RUN mkdir -p workspace \
  && cd workspace \
  && git clone https://github.com/uzh-rpg/fast.git \
  && cd fast \
  && mkdir build \
  && cd build \
  && cmake .. \
  && make -j$(nproc)

# clone rpg_svo project
RUN mkdir -p catkin_ws/src \
  && cd catkin_ws/src \
  && git clone https://github.com/uzh-rpg/rpg_vikit.git

# clone rpg_svo project
RUN mkdir -p catkin_ws/src \
  && cd catkin_ws/src \
  && git clone https://github.com/CognitiveRobotics/rpg_svo.git \
  && cd rpg_svo \
  && git checkout origin/ebt_svo --track

# build omnimapper ros wrapper
ADD build.sh catkin_ws/src/rpg_svo/build.sh
RUN ./catkin_ws/src/rpg_svo/build.sh
