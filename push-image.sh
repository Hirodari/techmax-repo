#!/bin/bash

# set error if any
set -eu

# login to your docker hub account
docker login --username $DOCKERHUB_USERNAME --password $DOCKERHUB_PASSWORD

# use the docker tag command to give the image a new name
sudo docker tag $IMAGE_TAG $DOCKERHUB_REPO/$IMAGE_TAG

# push the image to your docker hub repository
sudo docker push $DOCKERHUB_REPO/$IMAGE_TAG

# start the container to test the image 
sudo docker run -dp 80:80 $DOCKERHUB_REPO/$IMAGE_TAG

# export DOCKERHUB_USERNAME="hirodaridevdock"
# export DOCKERHUB_PASSWORD="parkstreet02038@"
# export DOCKERHUB_REPO="techmax-repo"