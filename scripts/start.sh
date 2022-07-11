#!/usr/bin/env sh

set -x
npm run build
set +x
set -x
npm start &
sleep 10
echo $! > .pidfile
set +x