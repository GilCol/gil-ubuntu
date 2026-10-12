#!/usr/bin/env bash
set -e

sudo apt update
sudo apt install -y stow tmux git curl zsh neovim xclip ripgrep luarocks

luarocks install tree-sitter-cli

# Stow list - Add more stow configs here e.g nvim
stow --dir=stow --target="$HOME" tmux
stow --dir=stow --target="$HOME" nvim
