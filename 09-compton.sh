#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
echo "Installing Compton"
sudo apt-get install -y \
	libx11-dev \
	libxcomposite-dev \
	libxdamage-dev \
	libxfixes-dev \
	libxext-dev \
	libxrender-dev \
	libxrandr-dev \
	libxinerama-dev \
	x11-utils \
	pkg-config \
	x11proto-core-dev \
	x11proto-composite-dev \
	libpcre3-dev \
	libdbus-1-dev \
	libpcre3-dev \
	libconfig-dev \
	libdrm-dev \
	libgl1-mesa-dev \
	libgl1-mesa-glx
cd ${MAKEDIR}
git clone https://github.com/chjj/compton.git
cd ${MAKEDIR}/compton
make
make docs
sudo make install clean
exit
