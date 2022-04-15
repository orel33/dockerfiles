#!/bin/bash

OPT="-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix" 

docker run -it --privileged $OPT --device /dev/kvm orel33/qemunet:latest
# docker run -it --privileged orel33/miniqemu
