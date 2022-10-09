#!/usr/bin/env bash

kubectl set image deployments/udnd-capstone udnd-devops-capstone=nyrro/udnd-devops-capstone:latest
kubectl rollout status deployments/udnd-capstone
