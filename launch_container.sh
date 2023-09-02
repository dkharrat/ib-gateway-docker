#!/usr/bin/env bash
set -Eeuo pipefail

if [ $# -ne 2 ] ; then
	echo "Usage: ./launch_container.sh <channel> <env_file_path>"
	exit 1
fi

CHANNEL=$1
ENV_PATH=$2

docker run --name ibgateway_$CHANNEL --restart always -p 4001:4001 -p 4002:4002 -p 5900:5900 --env-file $ENV_PATH -d ibgateway_$CHANNEL

