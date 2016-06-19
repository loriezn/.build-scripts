#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
echo "Preparing machine build."
sleep 1
echo "Please enter your user name"

read -p 'Username: ' USER

# Build Directories
BUILDDIR="${HOME}/00-build-scripts"
MAKEDIR="${HOME}/makedir"
ROOTDIR="/root"

# Dotfile Directories
DOTFILES="${BUILD}/dotfiles"
ROOTDOTS="${BUILD}/rootdot"

# Create build directories and pull dependency repository down
mkdir ${MAKEDIR}
#git clone https://github.com/affintiyskin/00-build-scripts.git

# Export Environment Variables
export USER
export BUILDDIR
export MAKEDIR
export ROOTDIR
export DOTFILES
export ROOTDOTS

sleep 3
echo "Linking user and root config dot files"
sh ${BUILD}/./01-dot-links.sh
sudo sh ${BUILD}/./02-root-dot-links.sh
sleep 3
echo "Upgrading system kernel"
sh ${BUILD}/./03-kernel.sh
sleep 3
echo "Installing build tools"
sh ${BUILD}/./04-build.sh
sleep 3
echo "Installing dependency utilities and applications"
sh ${BUILD}/./05-utils.sh
sleep 3
echo "Installing python dependencies"
sh ${BUILD}/./06-python.sh
sleep 3
echo "Installing Xorg display manager"
sh ${BUILD}/./07-xorg.sh
sleep 3
echo "Compiling i3 window manager"
sh ${BUILD}/./08-i3.sh
sleep 3
echo "Compiling composition manager"
sh ${BUILD}/./09-compton.sh
sleep 3
echo "Compiling Rofi dropdown menu"
sh ${BUILD}/./10-rofi.sh
sleep 3
echo "Installing web browsers and sublime text"
sh ${BUILD}/./11-browsers.sh
sleep 3
echo "Compiling Scrot, Maim and Slop screen capture tools"
sh ${BUILD}/./12-maim.sh
sleep 3
echo "Downloading and installing font packs"
sh ${BUILD}/./13-fonts.sh
sleep 3
echo "Hacking Neofetch from debian repo"
sh ${BUILD}/./14-other-apps.sh
sleep 3
echo "Compiling termite terminal"
sh ${BUILD}/./15-termite.sh
sleep 3
echo "Compiling termite terminal"
sh ${BUILD}/./16-nodejs.sh
sleep 3
echo "Setup complete"
sleep 5
exit 0
