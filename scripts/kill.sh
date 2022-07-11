#!/usr/bin/env sh

set -x
head Response.txt
rm Response.txt
kill $(cat .pidfile)