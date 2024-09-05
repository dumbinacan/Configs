#!/bin/sh
# bash.conf contains my contains my bash configs
# source them to ~/.bashrc

echo "" >>  ~/.bashrc
echo "#" >>  ~/.bashrc
echo "# my bash configs" >>  ~/.bashrc
echo "#" >>  ~/.bashrc
echo "source $(pwd)/bash.conf" >> ~/.bashrc

# help me prevent running this more than once
chmod ug-x install.sh
