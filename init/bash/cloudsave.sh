#!/bin/bash

source ~/.credentials
nextcloudcmd --silent -u $user -p $password --path /Notes $client_root/Notes $server_uri 
