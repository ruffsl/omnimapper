FROM cogrob/omnimapper:svo
MAINTAINER Cognitive Robotics "http://cogrob.org/"

WORKDIR /root

# clone & build omnimapper project
RUN git clone https://GITHUB_TOKEN@github.com/prtksnghl/omnimapper_dev.git \
	&& cd omnimapper_dev \
	&& git checkout origin/features/plugin/svo --track \
	&& mkdir build \
	&& cd build \
	&& cmake .. \
	&& make -j$(nproc)

# build omnimapper ros wrapper
ADD build.sh omnimapper_dev/build.sh
RUN ./omnimapper_dev/build.sh
