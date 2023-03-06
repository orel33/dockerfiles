#!/bin/bash

set -x

# --no-cache

docker build  -t "orel33/myubuntu20:latest" . && docker push "orel33/myubuntu20:latest"
