#!/bin/sh
path="$HOME/.config/neofetch"
mkdir -p $path
<<<<<<< HEAD
mv $path/config.conf $path/config.conf.bak && echo "what the fuck?"
=======
mv --no-copy $path/config.conf $path/config.conf.bak && echo "backed up current config file"
>>>>>>> ac398aa764cc50e30471d31902e882adc43de152
ln -s $(pwd)/config.conf $path
