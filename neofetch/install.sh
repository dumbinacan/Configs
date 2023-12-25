#!/bin/sh
path="$HOME/.config/neofetch"
mkdir -p $path
mv --no-copy $path/config.conf $path/config.conf.bak && echo "backed up current config file"
ln -s $(pwd)/config.conf $path
