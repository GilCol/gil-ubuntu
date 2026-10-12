#!/usr/bin/env bash
set -e

sudo snap install nvim --classic

sudo apt update
sudo apt install -y stow tmux git curl zsh xclip ripgrep luarocks

sudo luarocks install tree-sitter-cli

# Stow list - Add more stow configs here e.g nvim
stow --dir=stow --target="$HOME" tmux
stow --dir=stow --target="$HOME" nvim
stow --dir=stow --target="$HOME" kitty
