#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
echo "Installing Rofi"
xmk="/home/loki/makedir"
sudo apt-get install -y \
	autoconf \
	automake \
	pkg-config \
	libxft2 \
	libpango1.0-dev \
	libpangocairo-1.0-0 \
	libcairo2-dev \
	libglib2.0-dev \
	libx11-dev \
	libstartup-notification0-dev \
	libxkbcommon-dev \
	libxkbcommon-x11-dev \
	libxcb-xinerama0-dev \
	libxcb-xkb-dev \
	libxcb1-dev \
	libxcb-icccm4-dev \
	libxcb-ewmh-dev \
	libxcb-util-dev \
	libxcb-util1 \
	libxcb-util-dev \
	libxcb-util0-dev
cd $xmk
git clone https://github.com/DaveDavenport/rofi.git
cd $xmk/rofi
sleep 2
git submodule update
sleep 2
git submodule init
sleep 2
autoreconf -i
sleep 1
mkdir build
cd build
../configure
make
sudo make install clean
exit
