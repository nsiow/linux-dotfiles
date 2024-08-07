#!/usr/bin/env bash

set -e

if which pyenv >/dev/null 2>&1; then
  echo 'pyenv is already installed'
  exit 0
fi

sudo apt update
sudo apt install \
  build-essential \
  curl \
  git \
  libbz2-dev \
  libffi-dev \
  liblzma-dev \
  libncursesw5-dev \
  libreadline-dev \
  libsqlite3-dev \
  libssl-dev \
  libxml2-dev \
  libxmlsec1-dev \
  tk-dev \
  xz-utils \
  zlib1g-dev

curl https://pyenv.run | bash
