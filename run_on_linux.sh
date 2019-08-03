#!/bin/bash

xhost +local:root

# if wants to remove the container after leaving
# docker run -it --rm \

docker run -it \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $HOME:/home \
  kicad_python
