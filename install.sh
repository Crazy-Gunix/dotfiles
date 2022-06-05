#!/bin/bash

# Setup zsh and i3

sudo pacman -Sy

sudo pacman -S --noconfirm zsh-theme-powerlevel10k zsh-syntax-highlighting zsh-history-substring-search zsh-autosuggestions

curl https://github.com/Crazy-Gunix/dotfiles/raw/main/.zshrc > ~/.zshrc
