FROM cogrob/omnimapper:base
MAINTAINER Cognitive Robotics "http://cogrob.org/"

WORKDIR /root

# clone and build OpenCV
RUN mkdir -p workspace \
  && cd workspace \
  && git clone https://github.com/Itseez/opencv.git \
  && cd opencv \
  && git checkout 2.4.9 \
  && mkdir build \
  && cd build \
  && cmake -BUILD_opencv_nonfree="True" .. \
  && make -j$(nproc) install
