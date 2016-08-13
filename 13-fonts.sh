#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
source ${HOME}/.vars.sh
sudo apt-get update
echo "Installing Powerline fonts & Font Awesome"
sudo apt-get install -y \
	fontconfig \
	fonts-powerline \
	fonts-font-awesome \
	fonts-hack-otf \
	fonts-hack-ttf \
	fonts-hack-web

echo "Installing Numix Icon Theme"
	sudo add-apt-repository ppa:numix/ppa -y
	sudo apt-get update
	sudo apt-get install -y numix-icon-theme

echo "Installing Oh-Snap Font"
cd ${MAKEDIR}
wget http://sourceforge.net/projects/osnapfont/files/ohsnap-1.8.0.tar.gz
tar xzvf ohsnap-1.8.0.tar.gz
cd ${MAKEDIR}/ohsnap-1.8.0
sudo mkdir /usr/share/fonts/ohsnap
sudo mkdir -p /usr/share/kbd/consolefonts
sudo cp *.pcf /usr/share/fonts/ohsnap
sudo cp *.psfu /usr/share/kbd/consolefonts
sudo fc-cache -fs
sudo mkfontscale /usr/share/fonts/ohsnap
sudo mkfontdir /usr/share/fonts/ohsnap

echo "Installing Hack Font"
cd ${MAKEDIR}
git clone https://github.com/chrissimpkins/Hack.git

sudo mkdir /usr/share/fonts/hack
sudo cp ${MAKEDIR}/Hack/build/ttf/* /usr/share/fonts/hack
sudo cp ${MAKEDIR}/Hack/build/otf/* /usr/share/fonts/hack

echo "Installing Font-Awesome"
cd ${MAKEDIR}
git clone https://github.com/FortAwesome/Font-Awesome.git
cd ${MAKEDIR}/Font-Awesome/fonts
sudo cp fontawesome-webfont.ttf /usr/share/fonts/opentype/font-awesome
sudo cp FontAwesome.otf /usr/share/fonts/opentype
sudo mkdir /usr/share/fonts/truetype/font-awesome
sudo cp fontawesome-webfont.ttf /usr/share/fonts/truetype/font-awesome

sudo fc-cache -fs
sudo mkfontscale /usr/share/fonts/
sudo mkfontdir /usr/share/fonts/
exit
