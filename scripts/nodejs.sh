#!/usr/bin/env bash

set -e

if which node >/dev/null 2>&1; then
  echo 'nodejs is already installed'
  exit
fi

# Use Nodesource repository
curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
rm -f nodesource_setup.sh

sudo apt install -y nodejs
