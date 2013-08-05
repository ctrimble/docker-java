#!/bin/bash

sudo apt-get install linux-image-extra-$(uname -r) --assume-yes
sudo apt-get install software-properties-common  --assume-yes
sudo add-apt-repository ppa:dotcloud/lxc-docker --yes
sudo apt-get update
sudo apt-get install lxc-docker --assume-yes

# Bind docker to all interfaces.
sudo stop docker
sudo sed -i.bak 's#/usr/bin/docker -d#/usr/bin/docker -H 0.0.0.0 -d#g' /etc/init/docker.conf
sudo start docker

sleep 1
docker pull base
docker pull busybox
