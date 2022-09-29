#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nyrro/project-ml-python:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project-ml-python --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/project-ml-python-75466b69f-mbtpv --address 0.0.0.0 8000:80
