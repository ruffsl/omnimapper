FROM cogrob/omnimapper:svo
MAINTAINER Cognitive Robotics "http://cogrob.org/"

WORKDIR /root

# clone omnimapper project
RUN git clone https://GITHUB_TOKEN@github.com/CognitiveRobotics/omnimapper_dev.git \
	&& cd  omnimapper_dev
	# && cd omnimapper_dev  \
	# && git checkout features/plugin/ebt

# build omnimapper project
RUN cd omnimapper_dev/ \
	&& mkdir build \
	&& cd build \
	&& cmake .. \
	&& make -j$(nproc)

# build omnimapper ros wrapper
ADD build.sh omnimapper_dev/build.sh
RUN ./omnimapper_dev/build.sh
