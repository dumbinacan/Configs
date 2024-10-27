#!/bin/bash

mkdir -p ~/.ssh
sudo mv ~/.ssh/config ~/.ssh/config.$(date +%Y-%m-%d).bak # backup in case there was something else there.
sudo ln -s $(pwd)/config ~/.ssh/config
cp -r keys ~/.ssh/
