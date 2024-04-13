#!/bin/bash
# puts you in a vim text file which
# corresponds to today's date in the journal folder
# auto update to the cloud in the background

# update Notes folder before running anything
# to ensure that we are writing in the most up to date file
## $HOME/Configs/init/bash/cloudsave.sh
# the command above is really slow
# I want to make this update the specific file we are accessing only

# path to the correct year folder 
path="$HOME/Notes/journal/$(date +"%Y")/$(date +"%m")"
mkdir -p $path
vim $path/$(date +"%Y-%m-%d")  && ($HOME/Configs/init/zsh/cloudsave.sh &)
# TODO errors to log
