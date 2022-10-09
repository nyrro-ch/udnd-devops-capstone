
## Project Overview

This is a capstone project to showcase the use of CI/CD tools and aws cloud services
---

## Introduction
This projects runs a flask 'hello-world' app. Linting and building the docker file is configured in the circleci pipeline.
There are scripts to create cluster, start and update kubernetes.

## Prerequistis
- kubectl
- aws-cli
- eksctl
- docker
- python3

## Local ENV

* Review `Makefile`
* You can setup and lint the project on the local environment

### Running cluster

1. Let circleci to push the new builded docker image
2. Create cluster on eks:  `./create_cluster.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`
4. Update in Kubernetes:  `./update_kubernetes.sh`

## Files overview

* `.circleci`: configuration for circleci CI/CD
* `Dockerfile`: To create docker container 
* `Makefile`: Instructions to install and run the app
* `app.py`: Main application file
* `requirements.txt`: Python dependecies to install
* `run_docker.sh`: Build docker image and start a container
* `run_kubernetes.sh`: Create kubernetes and forward port
* `create_cluster.sh`: Create eks cluster
* `cluster.yaml`: Config for cluster
* `update_kubernetes.sh`: Update kubernetes 
* `upload_docker.sh`: Upload builded docker image to docker hub.
