#!/usr/bin/env sh

if curl -s --head  --request GET http://127.0.0.1:8081/ | grep "200 OK" > /dev/null; then 
   if curl -s --request GET http://127.0.0.1:8081/ | grep "Hello World" > /dev/null; then 
		echo 'string equal  hello world' > Response.txt
   else
	   echo 'issue in app' > Response.txt
   fi
else
   echo 'issue in app' > Response.txt
fi

