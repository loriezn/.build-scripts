#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
source ${HOME}/.vars.sh
echo "Setting Web Browsers"
sleep 1
echo "Installing Firefox & Chrome"
sudo apt-get autoremove -y && sudo apt-get autoclean -y
sleep 1
sudo apt-get install -y \
	firefox \
	chromium-browser
sleep 1

cd ${MAKEDIR}
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
sudo dpkg -i ${MAKEDIR}/sublime-text_build-3114_amd64.deb
sleep 1
sudo mv /usr/bin/subl /usr/bin/sublime
echo "installation complete!"
sleep 5
exit
