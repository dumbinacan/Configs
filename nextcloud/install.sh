#!/bin/bash

# this script depends on nextcloudcmd
# for arch, install nextcloud-client

# get credentials
echo "Please enter your"
read -p  'Nextcloud Server: ' server_uri
read -p  'Username: ' user
read -sp 'Password: ' password
client_root=$HOME

# make ~/.credentials for future use
echo '#!/bin/sh' > $client_root/.credentials
echo "user=$user" >> $client_root/.credentials
echo "password=$password" >> $client_root/.credentials
echo "client_root=$client_root" >> $client_root/.credentials
echo "server_uri=$server_uri" >> $client_root/.credentials

# minimize who can see this file
chmod a-rwx,ug+r $client_root/.credentials
chmod ug+x Documents Pictures Notes Configs
