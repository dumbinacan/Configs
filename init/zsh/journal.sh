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
# TODO
path="$HOME/Notes/journal/$(date +"%Y")/$(date +"%m")/$(date +"%d")"
if [[ $1 ]]; then
  filename=$1
else
  filename="$(date +"%Y-%m-%d")"
fi
mkdir -p $path
vim $path/$filename
# TODO
# optionally take user input for a filename
