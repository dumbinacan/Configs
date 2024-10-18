#!/bin/bash

sudo mv ~/.ssh/config ~/.ssh/config.bak$(date +%Y-%m-%d) # backup in case there was something else there.
sudo ln -s $(pwd)/config ~/.ssh/config
