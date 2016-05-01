#!/bin/bash
xmk=/home/loki/makedir

echo "Adding neofetch public key"
        echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | sudo tee -a /etc/apt/sources.list
        curl -L "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" -o Release-neofetch.key && apt-key add Release-neofetch.key && rm Release-neofetch.key
echo "Installing neofetch"
        apt-get update
        apt-get install neofetch

cd $xmk
curl -s https://raw.githubusercontent.com/jeffkaufman/icdiff/release-1.7.3/icdiff \
  | sudo tee /usr/local/bin/icdiff > /dev/null \
  && sudo chmod ugo+rx /usr/local/bin/icdiff
exit

