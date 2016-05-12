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

#  	thefuck \
exit
