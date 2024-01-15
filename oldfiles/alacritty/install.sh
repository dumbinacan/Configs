#!/bin/sh
path="~/.config/alacritty"
mkdir -p $path
mv $path/alacritty.yml $path/alacritty.yml.bak
ln -s $(pwd)/alacritty.yml $path
