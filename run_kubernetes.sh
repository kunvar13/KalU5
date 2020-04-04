#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=ada2ac014946

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kalpro5\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=kalpro5


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a 
kubectl port-forward kalpro5 8000:80

