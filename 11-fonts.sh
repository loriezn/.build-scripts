#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
xmk="/home/loki/makedir"
apt-get update
echo "Installing Powerline fonts & Font Awesome"
apt-get install -y \
	fontconfig \
	fonts-powerline \
#	fonts-font-awesome

echo "Installing Numix Icon Theme"
	add-apt-repository ppa:numix/ppa
	apt-get update
	apt-get install numix-icon-theme

echo "Installing Oh-Snap Font"
cd $xmk
wget http://sourceforge.net/projects/osnapfont/files/ohsnap-1.8.0.tar.gz
tar xzvf ohsnap-1.8.0.tar.gz
cd $xmk/ohsnap-1.8.0
mkdir /usr/share/fonts/ohsnap
mkdir -p /usr/share/kbd/consolefonts
cp *.pcf /usr/share/fonts/ohsnap
cp *.psfu /usr/share/kbd/consolefonts
fc-cache -fs
mkfontscale /usr/share/fonts/ohsnap
mkfontdir /usr/share/fonts/ohsnap

echo "Installing Hack Font"
cd $xmk
git clone https://github.com/chrissimpkins/Hack.git

mkdir /usr/share/fonts/hack
cp $xmk/Hack/build/ttf/* /usr/share/fonts/hack
cp $xmk/Hack/build/otf/* /usr/share/fonts/hack

echo "Installing Font-Awesome"
cd $xmk
git clone https://github.com/FortAwesome/Font-Awesome.git
cd $xmk/Font-Awesome/fonts
cp fontawesome-webfont.ttf /usr/share/fonts/opentype/font-awesome
cp FontAwesome.otf /usr/share/fonts/opentype
mkdir /usr/share/fonts/truetype/font-awesome
cp fontawesome-webfont.ttf /usr/share/fonts/truetype/font-awesome

fc-cache -fs
mkfontscale /usr/share/fonts/hack
mkfontdir /usr/share/fonts/hack

#cp $xmk/Hack/build/ttf/
