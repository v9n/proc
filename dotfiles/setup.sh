#!/usr/bin/env bash

# Common
brew install gpg


# Ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable


# Lnaugge I used
brew install elixir
brew install go
brew install crystal

# Rust
curl https://sh.rustup.rs -sSf | sh
