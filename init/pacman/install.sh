#!/bin/bash

sudo mv /etc/pacman.conf /etc/pacman.conf.$(date +%Y-%m-%d).bak # backup in case there was something else there.
sudo ln -s $(pwd)/pacman.conf /etc/pacman.conf
