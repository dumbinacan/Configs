#!/bin/bash

# requirements
sudo pacman -S --noconfirm ueberzug
mv ~/.config/ranger/rc.conf ~/.config/ranger/rc.conf.$(date +%Y-%m-%d).bak
ln -s $(pwd)/rc.conf ~/.config/ranger/rc.conf
