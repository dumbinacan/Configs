#!/bin/sh

sudo pacman -S --noconfirm zsh zsh-{autosuggestions,completions,doc,history-substring-search,lovers,syntax-highlighting} zshdb

mv ~/.zsh ~/.zsh.bak_$(date +%Y-%m-%d) # backup in case there was something else there.
mv ~/.zshrc ~/.zshrc.bak_$(date +%Y-%m-%d) # backup in case there was something else there.
mkdir -p ~/.zsh

ln -s $(pwd)/aliases.zsh ~/.zsh/
ln -s $(pwd)/archlinux_extras.zsh ~/.zsh/
ln -s $(pwd)/dumb.zsh ~/.zsh/
ln -s $(pwd)/zshrc ~/.zshrc
