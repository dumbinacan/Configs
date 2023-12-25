#!/bin/bash

sudo mv /etc/pacman.conf /etc/pacman.conf.bak
sudo ln -s $(pwd)/pacman.conf /etc/pacman.conf
chmod ug-x install.sh
