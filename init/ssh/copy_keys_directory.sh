#!/bin/sh

# This will copy the skeleton of the keys directory
# The idea is to have all the folders here without the private keys.
# The folders can help you know what keys need to be populated if needed.
mkdir -p keys
save_path=$(pwd)/keys
src_path=$HOME/.ssh/keys/
cd $src_path &&
find . -type d -exec mkdir -p -- $save_path/{} \;
