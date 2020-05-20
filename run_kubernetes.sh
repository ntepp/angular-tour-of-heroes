#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=jmntepp/angular-tour-of-heroes

# Step 2
# Run the Docker Hub container with kubernetes
/home/ec2-user/bin/kubectl run angular-tour-of-heroes --image=jmntepp/angular-tour-of-heroes --port=80

# Step 3:
# List kubernetes pods
/home/ec2-user/bin/kubectl get pods

# Step 4:
# Forward the container port to a host
/home/ec2-user/bin/kubectl port-forward angular-tour-of-heroes 4200:80