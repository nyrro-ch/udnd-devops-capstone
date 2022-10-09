#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nyrro/udnd-devops-capstone:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy udnd-capstone --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods
pod=$(kubectl get deploy,rs,svc,pods | tail -1 | awk '{print $1}')

# Step 4:
# Forward the container port to a host
kubectl port-forward $pod --address 0.0.0.0 8000:80
