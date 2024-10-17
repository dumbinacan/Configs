#!/bin/bash

# this script depends on nextcloudcmd
# for arch, install nextcloud-client
# This script will now use gpg to store the password encrypted

# get credentials
echo "Please enter your"
read -p  'gpg email:' email
read -p  'Nextcloud Server: ' server_uri
read -p  'Username: ' user
read -sp 'Password: ' password
client_root=$HOME
password=$(echo $password | gpg -e -a -r $email)
# make ~/.credentials for future use
echo '#!/bin/sh' > $client_root/.credentials
echo "user=$user" >> $client_root/.credentials
echo "password=""$""(""echo '$password'" "|" "gpg -dq)" >> $client_root/.credentials
echo "client_root=$client_root" >> $client_root/.credentials
echo "server_uri=$server_uri" >> $client_root/.credentials

# minimize who can see this file
chmod 600 $client_root/.credentials
