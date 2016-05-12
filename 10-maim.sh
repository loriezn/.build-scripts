#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
echo "Setting Maim & Slop"
xmk="/home/loki/makedir"

cd $xmk
git clone https://github.com/naelstrof/maim.git
git clone https://github.com/naelstrof/slop.git
sudo apt-get install -y \
	libimlib2-dev \
	libxrandr-dev \
	libxfixes-dev \
	libxext-dev \
	libgl1-mesa-dev \
	libxrender-dev \
	libglew-dev \
	libglm-dev
cd $xmk/maim
cmake ./
make
sudo make install
cd $xmk/slop
cmake -DCMAKE_OPENGL_SUPPORT=true ./
make
sudo make install

echo "installation complete!"
sleep 5
exit
