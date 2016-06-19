#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
cd ${MAKEDIR}
curl -s https://raw.githubusercontent.com/jeffkaufman/icdiff/release-1.8.1/icdiff \
  | sudo tee /usr/local/bin/icdiff > /dev/null \
  && sudo chmod ugo+rx /usr/local/bin/icdiff


echo "Adding neofetch public key"
        echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | sudo tee -a /etc/apt/sources.list
        curl -L "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" -o Release-neofetch.key && sudo apt-key add -y Release-neofetch.key && rm Release-neofetch.key
echo "Installing neofetch"
        sudo apt-get update
        sudo apt-get install neofetch

sudo apt-get install -y gtk2-engines-murrine numix-plymouth-theme
sudo ln -s /lib/plymouth/themes/numix /usr/share/plymouth/themes/numix
sudo apt-get autoclean -y && sudo apt-get autoremove -y
exit
