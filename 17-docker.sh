#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
source ${HOME}/.vars.sh
sudo apt-get install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo chown loki:loki /etc/apt/sources.list
echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" >> /etc/apt/sources.list
sudo chown root:root /etc/apt/sources.list
sudo apt-get update
sudo apt-get purge lxc-docker
apt-cache policy docker-engine
sudo apt-get install -y linux-image-extra-$(uname -r)
sudo apt-get update
sudo apt-get install -y --force-yes docker-engine
sudo -i && curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > su -c ${HOME}/docker-compose
sudo chown root:root ${HOME}/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo mv ${HOME}/docker-compose /usr/local/bin/docker-compose
docker-compose --version
sudo systemctl enable docker
sudo systemctl start docker
exit
