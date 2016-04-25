#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
echo "Setting up build directory"
sleep 5
xmk="/home/loki/makedir"
cd $xmk

echo "Adding i3 Keyring"
sleep 5
apt-get --allow-unauthenticated install -y sur5r-keyring
apt-get update
sleep 1
git clone https://github.com/Airblader/dotfiles.git
sleep 1

echo "Installing i3"
sleep 5
apt-get install -y \
	i3 \
	i3blocks \
	i3lock \
	libanyevent-i3-perl \
	libjson-xs-perl

echo "Installing i3 Gaps Deps"
apt-get update
apt-get install -y \
	libxcb1-dev \
	libxcb-keysyms1-dev \
	libpango1.0-dev \
	libxcb-util0-dev \
	libxcb-icccm4-dev \
	libyajl-dev \
	libstartup-notification0-dev \
	libxcb-randr0-dev \
	libev-dev \
	libxcb-cursor-dev \
	libxcb-xinerama0-dev \
	libxcb-xkb-dev \
	libxkbcommon-dev \
	libxkbcommon-x11-dev \
	libx11-dev \
	libxfixes-dev \
	libxi-dev \
	asciidoc \
	libxrandr-dev \
	libxcb1-dev \
	libxcb-util-dev \
	libxcb-util0-dev \
	libx11-xcb-dev \
	libxcb-ewmh-dev \
	libxcb-dpms0-dev \
	

cd $xmk
git clone https://github.com/Airblader/i3.git
cd i3
git checkout gaps
sleep 1
git pull
sleep 1
make
sleep 1
make install

cd $xmk
git clone https://github.com/Airblader/unclutter-xfixes.git
sleep 1
cd $xmk/unclutter-xfixes
make
make install
sleep 1
cd $xmk
git clone https://github.com/Airblader/xedgewarp.git
sleep 1
cd $xmk/xedgewarp
make
make install
cd $xmk
git clone https://github.com/baskerville/xtitle.git
cd $xmk/xtitle
make
make install
echo "Installing i3 Gaps"
sleep 5
cd $xmk
git clone https://github.com/Airblader/i3blocks-gaps.git
cd $xmk/i3blocks-gaps
make clean debug
make install
cd $xmk
git clone https://github.com/Airblader/i3status.git
apt-get install -y \
	libconfuse-dev \
	libyajl-dev \
	libasound2-dev \
	libiw-dev \
	libcap2-bin \
	libpulse-dev
cd $xmk/i3status
make
make install
cd $xmk
git clone https://github.com/Airblader/i3lock.git
cd $xmk/i3lock
apt-get install -y \
	libpam0g-dev \
	libcairo2-dev \
	libx11-dev \
	libx11-xcb-dev
make
make install
echo "i3 Installation Complete!!"
sleep 5
exit
