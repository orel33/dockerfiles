#!/bin/bash

### build
OPT="$*" # --no-cache
echo "OPT=$OPT"
# date > build-date.txt # use to enforce the build of certain layers
docker build $OPT -t "orel33/vpl-ubuntu20" . || exit 1

### push on docker.com
# run "docker login" before
docker push "orel33/vpl-ubuntu20"

### push on docker@ubx
# run "docker login registry.u-bordeaux.fr"
docker tag "orel33/vpl-ubuntu20" "registry.u-bordeaux.fr/orel33/vpl-ubuntu20" || exit 1
docker push "registry.u-bordeaux.fr/orel33/vpl-ubuntu20"

# eof
