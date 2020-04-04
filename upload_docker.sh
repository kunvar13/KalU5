#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=ada2ac014946

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username=kunvar13
docker tag $dockerpath kunvar13/kalpro5:project

# Step 3:
# Push image to a docker repository
docker push kunvar13/kalpro5:project
