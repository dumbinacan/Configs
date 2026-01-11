#!/bin/bash

mkdir -p ~/.ssh
                                                   # forgive me
mv ~/.ssh/config ~/.ssh/config.$(date +%Y-%m-%d).bak 2> /dev/null # backup in case there was something else there.
ln -s $(pwd)/config ~/.ssh/config
# cp -r keys ~/.ssh/
