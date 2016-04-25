#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
xmk="/home/loki/makedir"
mkdir $xmk
echo "Updating System Packages & Distribution"
cp /mnt/bu/0000-buildme/nanorc /etc/
cp /mnt/bu/0000-buildme/getty@tty1.service /etc/systemd/system/getty.target.wants/
cp /mnt/bu/0000-buildme/grub /etc/default
cp /mnt/bu/0000-buildme/interfaces.work /etc/network/interfaces

apt-get update
apt-get upgrade -y && apt-get dist-upgrade -y

echo "Updating System Kernel"
apt-get update
apt-get install -y bcmwl-kernel-source unzip

cp ~/build-pkgs/bluetooth/BCM20702A1_001.002.014.1443.1572.hcd /lib/firmware/brcm/BCM20702A1-0a5c-216f.hcd
ln -s /lib/firmware/brcm/BCM20702A1-0a5c-216f.hcd /lib/firmware/brcm/BCM20702A0-0a5c-216f.hcd

cd $xmk
git clone https://github.com/DisplayLink/evdi.git
cd evdi
make
make install

wget http://www.displaylink.com/downloads/file?id=123
mv file?id=123 displaylink.zip
unzip displaylin.zip

./displaylink-driver-0.9.68.run --noexec --keep

exit
