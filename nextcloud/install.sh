#!/bin/bash

# this script depends on nextcloudcmd
# for arch, install nextcloud-client
# requires openssl and sshpass
pacman -S openssl sshpass

client_root=$HOME

# get credentials
echo "Please enter your"
read -p  'Nextcloud Server: ' server_uri
read -p  'Username: ' user
read -sp 'Password: ' password
echo
password=$(echo $password | openssl enc -aes-256-cbc -md sha512 -a -pbkdf2 -iter 100000 -salt)

# make ~/.credentials for future use
echo '#!/bin/sh' > $client_root/.credentials
echo "user=$user" >> $client_root/.credentials
echo "password=""$""(""echo '$password'" "|" "openssl enc -aes-256-cbc -md sha512 -a -d -pbkdf2 -iter 100000 -salt)" >> $client_root/.credentials
echo "client_root=$client_root" >> $client_root/.credentials
echo "server_uri=$server_uri" >> $client_root/.credentials

# minimize who can see this file
chmod 600 $client_root/.credentials
