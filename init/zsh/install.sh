#!/bin/sh

sudo pacman -S --noconfirm zsh zsh-{autosuggestions,completions,doc,history-substring-search,lovers,syntax-highlighting} zshdb kitty-shell-integration

mv ~/.zsh ~/.zsh.$(date +%Y-%m-%d).bak # backup in case there was something else there.
mv ~/.zshrc ~/.zshrc.$(date +%Y-%m-%d).bak # backup in case there was something else there.
mkdir -p ~/.zsh

ln -s $(pwd)/aliases.zsh ~/.zsh/
ln -s $(pwd)/archlinux_extras.zsh ~/.zsh/
ln -s $(pwd)/dumb.zsh ~/.zsh/
ln -s $(pwd)/zshrc ~/.zshrc
