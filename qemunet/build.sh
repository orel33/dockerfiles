#!/bin/bash

# docker build -t "orel33/miniqemu:latest" -f Dockerfile.miniqemu . && docker push "orel33/miniqemu:latest"
# docker build -t "orel33/qemu:latest" -f Dockerfile.qemu . && docker push "orel33/qemu:latest"

docker build -t "orel33/qemunet:latest" -f Dockerfile.qemunet . && docker push "orel33/qemunet:latest"
