#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
echo "Setting Web Browsers"
xmk="/hom/loki/makedir"
sleep 5
xmk="/home/loki/makedir"

echo "Installing Firefox & Chrome"
sleep 5
apt-get install -y \
	firefox \
	chromium-browser
wget https://download/sublimetext.com/sublime-text_build-3103_amd64.deb
dpkg -i $xmk/sublime-text_build-3103_amd64.deb
sleep 1
mv /usr/bin/subl /usr/bin/sublime
echo "installation complete!"
sleep 5
exit
