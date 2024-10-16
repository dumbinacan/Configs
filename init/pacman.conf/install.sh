#!/bin/bash

sudo mv /etc/pacman.conf /etc/pacman.conf.bak_$(date +%Y-%m-%d) # backup in case there was something else there.
sudo ln -s $(pwd)/pacman.conf /etc/pacman.conf
