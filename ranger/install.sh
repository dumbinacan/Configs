#!/bin/bash

ranger --copy-config=all
mv ~/.config/ranger/rifle.conf ~/.config/ranger/rifle.conf.default
ln -s $(pwd)/rifle.conf ~/.config/ranger/rifle.conf
