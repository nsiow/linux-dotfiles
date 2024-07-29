#!/usr/bin/env bash

set -e

# If we already have docker, short circuit
if which docker >/dev/null 2>&1; then
  echo 'docker is already installed'
  exit
fi

# Some apt prerequisites for using the docker repository
sudo apt install apt-transport-https ca-certificates curl software-properties-common

# Add key + repository
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository 'deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable'

# Install docker
sudo apt install docker-ce

# Redo docker groups to avoid sudo nonsense
sudo usermod -aG docker ${USER}

# Check docker status
sudo systemctl status docker.service
