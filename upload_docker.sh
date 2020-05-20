#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerHubUser=jmntepp
dockerpath=${dockerHubUser}/angular-tour-of-heroes-1

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u ${dockerHubUser} -p ${env.DOCKER_HUB_PASSWORD} &&\
    docker image tag angular-tour-of-heroes-1 $dockerpath
    
# Step 3:
# Push image to a docker repository
docker image push $dockerpath
