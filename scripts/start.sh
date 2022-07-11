#!/usr/bin/env sh

#set -x
npm run build #Run the npm build command
#set +x
#set -x
npm start & #Start the application and runn server on local host on port 8081;
sleep 10 #pause for 10s As I was getting issue to continue with other stages in Jenkins added this line.
echo $! > .pidfile #store the pid for npm start process so that we can abort the code in future.
#set +x
