#!/bin/bash

# set error if any
set -eu

# login to your docker hub account
login --username $DOCKERHUB_USERNAME --password $DOCKERHUB_PASSWORD

# use the docker tag command to give the image a new name
docker tag $IMAGE_TAG $DOCKERHUB_USERNAME/$DOCKERHUB_REPO

# push the image to your docker hub repository
docker push $DOCKERHUB_USERNAME/$DOCKERHUB_REPO

# start the container to test the image 
docker run -dp 80:80 $DOCKERHUB_USERNAME/$DOCKERHUB_REPO

