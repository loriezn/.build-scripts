#!/bin/bash

echo "Adding neofetch public key"
        echo "deb http://dl.bintray.com/dawidd6/neofetch jessie main" | sudo tee -a /etc/apt/sources.list
        curl -L "https://bintray.com/user/downloadSubjectPublicKey?username=bintray" -o Release-neofetch.key && apt-key add Release-neofetch.key && rm Release-neofetch.key
echo "Installing neofetch"
        apt-get update
        apt-get install neofetch
        
