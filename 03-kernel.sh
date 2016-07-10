#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
source ${HOME}/.vars.sh
echo "Updating System Packages & Distribution"

sudo apt-get autoclean -y && sudo apt-get autoremove -y
sudo apt-get update
sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y

echo "Updating System Kernel"
sudo apt-get update
sudo apt-get install -y bcmwl-kernel-source unzip

exit
