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

#echo "Updating System Kernel"
#sudo apt-get update
#sudo apt-get install -y bcmwl-kernel-source unzip

#cp /home/loki/00-build-pkgs/BCM20702A1_001.002.014.1443.1572.hcd /lib/firmware/brcm/BCM20702A1-0a5c-216f.hcd
#ln -s /lib/firmware/brcm/BCM20702A1-0a5c-216f.hcd /lib/firmware/brcm/BCM20702A0-0a5c-216f.hcd

#cd ${MAKEDIR}
#git clone https://github.com/DisplayLink/evdi.git
#cd evdi
#make
#make install

#wget http://www.displaylink.com/downloads/file?id=123
#mv file?id=123 displaylink.zip
#unzip displaylin.zip

#./displaylink-driver-0.9.68.run --noexec --keep

exit
