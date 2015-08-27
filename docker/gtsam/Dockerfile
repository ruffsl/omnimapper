FROM cogrob/omnimapper:gui
MAINTAINER Cognitive Robotics "http://cogrob.org/"

WORKDIR /root

# download and unzip gtsam
ENV GTSAM_VERSION 3.2.1
RUN wget https://research.cc.gatech.edu/borg/sites/edu.borg/files/downloads/gtsam-${GTSAM_VERSION}.tgz \
	&& mkdir gtsam \
	&& tar -xvzf gtsam-${GTSAM_VERSION}.tgz --strip=1 -C gtsam/ \
	&& rm gtsam-${GTSAM_VERSION}.tgz

# build and install gtsam
RUN cd gtsam/ \
	&& mkdir build \
	&& cd build \
	&& cmake .. \
	&& make -j$(nproc) \
	&& make install

	# add patch to system eigen for gtsam
	COPY HouseholderQR.h /usr/include/eigen3/Eigen/src/QR/HouseholderQR.h
	COPY CommaInitializer.h /usr/include/eigen3/Eigen/src/CommaInitializer.h
	RUN chmod 644 /usr/include/eigen3/Eigen/src/QR/HouseholderQR.h \
		&& chmod 644 /usr/include/eigen3/Eigen/src/CommaInitializer.h
