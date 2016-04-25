#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
xmk="~/makedir"
echo "Installing Utilities"
apt-get update
apt-get install -y \
	htop \
	bluez \
	asciidoc \
	flashplugin-installer \
	lm-sensors \
  	feh \
	acpi \
	xdotool \
	pulseaudio \
	pulseaudio-utils \
	pavucontrol \
  	gsimplecal \
	thunderbird \
	enigmail \
  	network-manager \
  	network-manager-openvpn \
  	imagemagick \
  	thunar \
  	thunar-archive-plugin \
  	file-roller \
  	tumbler \
  	eog \
  	tk \
  	aspell-en \
  	evince \
  	thefuck \
  	arandr \
	w3m \
  	w3m-img \
  	htop \
  	bluez \
  	blueman \
  	redshift \
  	weechat \
	scrot \
	mpc \
	gvfs-libs \
	xclip

#echo "Adding neofetch public key"
#        echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | sudo tee -a /etc/apt/sources.list
#        curl -L "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" -o Release-neofetch.key && apt-key add Release-neofetch.key && rm Release-neofetch.key
#echo "Installing neofetch"
#        apt-get update
#        apt-get install neofetch

