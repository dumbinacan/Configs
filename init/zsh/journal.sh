#!/bin/bash
# journal your thoughts
# save by name or date
# organized in a folder structure that keeps track of the day you wrote it

path="$HOME/Notes/journal/$(date +"%Y")/$(date +"%m")/$(date +"%d")"
if [[ $1 ]]; then
  filename=$1
else
  filename="$(date +"%Y-%m-%d")"
fi

mkdir -p $path
vim $path/$filename
