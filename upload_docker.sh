#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
export epoch=$(date +"%s")
export dockerpath=akhildn/mlproject

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login akhildn
docker tag akhildn/mlproject:latest akhildn/mlproject:$epoch


# Step 3:
# Push image to a docker repository
docker push akhildn/mlproject:latest
docker push akhildn/mlproject:$epoch