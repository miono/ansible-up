#!/bin/bash

set -e

if [[ $SUDO_USER == "" ]]; then
	echo "Must be run with sudo"
	exit 1
fi

add-apt-repository -y ppa:ansible/ansible
apt-get update
apt install -y ansible

sudo -u $SUDO_USER ansible-playbook install-laptop.yml -kKb -e username=$SUDO_USER -e uid=$(id -u $SUDO_USER)
