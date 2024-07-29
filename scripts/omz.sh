#!/usr/bin/env bash

set -e

if [[ -d ~/.oh-my-zsh ]]; then
  echo 'omz is already installed'
  exit 0
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
