#!/usr/bin/env bash

set -e

if which kitty >/dev/null 2>&1; then
  echo 'kitty is already installed'
  exit
fi

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

cd /usr/local/bin
ln -sf ~/.local/kitty.app/bin/kitty .
ln -sf ~/.local/kitty.app/bin/kitten .
