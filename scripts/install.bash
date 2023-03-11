#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install git curl -y 

# Add docker
curl -sSL https://get.docker.com | sh

# Allow Docker to be used without being a root
sudo usermod -aG docker $USER

# Try docker
sudo docker run hello-world
