#!/bin/bash

set -e

if [[ $SUDO_USER == "" ]]; then
	echo "Must be run with sudo"
	exit 1
fi

export DEBIAN_FRONTEND=noninteractive

apt-get update --quiet
apt-get install --yes ansible make
