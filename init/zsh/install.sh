#!/bin/sh

sudo pacman -S --noconfirm zsh zsh-{autosuggestions,completions,doc,history-substring-search,lovers,syntax-highlighting} zshdb

# this might change
mkdir -p ~/.zsh
ln -s $(pwd)/aliases.zsh ~/.zsh/
ln -s $(pwd)/archlinux_extras.zsh ~/.zsh/
ln -s $(pwd)/dumb.zsh ~/.zsh/
ln -s $(pwd)/zshrc ~/.zshrc

# change to equals I've been growing anxious about repeatedly adding rights 
chmod ug+x journal.sh
chmod ug+x cloudsave.sh

# help me prevent running this more than once
chmod ug-x install.sh
