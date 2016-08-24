#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
source ${HOME}/.vars.sh
cd ${MAKEDIR}
curl -s https://raw.githubusercontent.com/jeffkaufman/icdiff/release-1.8.1/icdiff \
  | sudo tee /usr/local/bin/icdiff > /dev/null \
  && sudo chmod ugo+rx /usr/local/bin/icdiff


echo "Adding neofetch public key"
        echo "deb http://dl.bintray.com/dawidd6/neofetch xenial main" | sudo tee -a /etc/apt/sources.list.d/neofetch.list
        curl -L "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" -o Release-neofetch.key | sudo apt-key add -y Release-neofetch.key
echo "Installing neofetch"
        sudo apt-get update
        sudo apt-get install neofetch

sudo apt-get autoclean -y && sudo apt-get autoremove -y
exit
