#!/usr/bin/env bash

ITEMS=".oh-my-zsh \
  .zshrc\
"

for f in $ITEMS; do
  echo "Symblink from $HOME/$f to `pwd`/$f"
  ln -s `pwd`/$f   $HOME/$f
done
