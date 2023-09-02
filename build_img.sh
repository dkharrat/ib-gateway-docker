#!/usr/bin/env bash
set -Eeuo pipefail

if [ $# -ne 1 ] ; then
	echo "Usage: ./build.sh <channel>"
	exit 1
fi

CHANNEL=$1

cd $CHANNEL

docker build --progress=plain -t ibgateway_$CHANNEL .

