#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="kunvar13/kalu5:project"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kalproj5\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=kalproj5


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a 
kubectl port-forward kalproj5 8000:80

