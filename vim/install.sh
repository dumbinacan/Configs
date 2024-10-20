#!/bin/sh

mv ~/.vimrc ~/.vimrc.$(date +%Y-%m-%d).bak
ln -s $(pwd)/vimrc ~/.vimrc
