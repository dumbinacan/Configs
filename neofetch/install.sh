#!/bin/sh
path="$HOME/.config/neofetch"
mkdir -p $path
mv $path/config.conf $path/config.conf.bak && echo "what the fuck?"
ln -s $(pwd)/config.conf $path
