#!/usr/bin/env sh

#set -x
head Response.txt #Display the content of local file 
rm Response.txt #Delete the local file
kill $(cat .pidfile) #Stop the application
