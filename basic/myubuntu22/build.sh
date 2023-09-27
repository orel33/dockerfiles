#!/bin/bash

set -x

# --no-cache

docker build  -t "orel33/myubuntu22:latest" . && docker push "orel33/myubuntu22:latest"
