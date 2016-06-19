#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki

# Install Node Version Manager 
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash

# Install NPM Packages
npm install -g gulp-cli
npm install -g bower
npm install -g yo
npm install -g browserify
npm install -g assemble
npm install -g browser-sync

# Sublime Minify Dependencies
npm install -g clean-css uglifycss js-beautify html-minifier uglify-js minjson svgo

# Install Yeoman Generators
npm install --global generator-webapp
npm install --global generator-server-configs
npm install -g generator-bones

# Yo NPM WEBAPP
sudo apt-get install -y libcairo2-dev libjpeg8-dev libgif-dev optipng pngcrush pngquant libpango1.0-dev graphicsmagick libjpeg-turbo-progs inkscape
npm install -g generator-npm-webapp

# Phantom.js
sudo apt-get install build-essential g++ flex bison gperf ruby perl \
  libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
  libpng-dev libjpeg-dev python libx11-dev libxext-dev ttf-mscorefonts-installer
git clone git://github.com/ariya/phantomjs.git
cd phantomjs
git checkout 2.1.1
git submodule init
git submodule update
python build.py

# Shell Completions
npm install bower-complete -g
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
