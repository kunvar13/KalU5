#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=532a7e37e3a9

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=kunvar13
docker tag $dockerpath kunvar13/kalu5:project

# Step 3:
# Push image to a docker repository
docker push kunvar13/kalu5:project
