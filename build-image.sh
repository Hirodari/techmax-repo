#!/bin/bash

# set error if any
set -eu

# build the docker image
docker build -f $IMAGE_TAG/Dockerfile -t $IMAGE_TAG .
