#!/bin/bash

# requirements
# pacman -S ueberzug
mv ~/.config/ranger/rc.conf ~/.config/ranger/rc.conf.$(date +%Y-%m-%d).bak
ln -s $(pwd)/rc.conf ~/.config/ranger/rc.conf
