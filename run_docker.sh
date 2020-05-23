#!/usr/bin/env bash

## Complete the following steps to get Docker running locally


# Step 1:
# Build image and add a descriptive tag
docker build -t angular-tour-of-heroes .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run Angular app
docker run --name angular-tour-of-heroes-container -d -p 4200:80 angular-tour-of-heroes