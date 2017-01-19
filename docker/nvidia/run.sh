#!/bin/sh

# Add Xserver access for all local users, not ideal
#xhost +local:root

# Create container with nvida devices and envs
nvidia-docker create \
  -it \
  --env="DISPLAY" \
  --env="QT_X11_NO_MITSHM=1" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  cogrob/omnimapper:nvidia

# Remeber container details
export containerId=$(docker ps -l -q)
export containerConfigHostname=`docker inspect --format='{{ .Config.Hostname }}' $containerId`

# Add Xserver access for just this container
xhost +local:$containerConfigHostname

# Start container and execute an interative bash session
docker start $containerId
docker exec -it $containerId bash

# Remove Xserver access for just this container
xhost -local:$containerConfigHostname

# Remove Xserver access for all local users
# xhost -local:root
