#!/bin/bash
xmk=/home/loki/makedir

echo "Adding neofetch public key"
        echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | sudo tee -a /etc/apt/sources.list
        curl -L "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" -o Release-neofetch.key && apt-key add Release-neofetch.key && rm Release-neofetch.key
echo "Installing neofetch"
        apt-get update
        apt-get install neofetch

cd $xmk
git clone https://github.com/jeffkaufman/icdiff.git
chmod +x $xmk/icdiff/setup.py
pip install $xmk/icdiff/setup.py
exit

