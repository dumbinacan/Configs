#!/bin/sh

pacman -S --noconfirm zsh zsh-{autosuggestions,completions,doc,history-substring-search,lovers,syntax-highlighting} zshdb

# this might change
ln -s $(pwd)/aliases.zsh ~/.zsh/
ln -s $(pwd)/zshrc ~/.zshrc

chmod ug+x journal.sh
chmod ug+x cloudsave.sh

# help me prevent running this more than once
chmod ug-x install.sh
