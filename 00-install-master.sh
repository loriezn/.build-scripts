#!/bin/bash
echo "Preparing machine configuration"
build="${HOME}/00-build-scripts"
sleep 3
echo "Linking user and root config dot files"
sh ${build}/./01-dot-links.sh
sudo sh ${build}/./02-root-dot-links.sh
sleep 3
echo "Upgrading system kernel"
sh ${build}/./03-kernel.sh
sleep 3
echo "Installing build tools"
sh ${build}/./04-build.sh
sleep 3
echo "Installing dependency utilities and applications"
sh ${build}/./05-utils.sh
sleep 3
echo "Installing python dependencies"
sh ${build}/./06-python.sh
sleep 3
echo "Installing Xorg display manager"
sh ${build}/./07-xorg.sh
sleep 3
echo "Compiling i3 window manager"
sh ${build}/./08-i3.sh
sleep 3
echo "Compiling composition manager"
sh ${build}/./09-compton.sh
sleep 3
echo "Compiling Rofi dropdown menu"
sh ${build}/./10-rofi.sh
sleep 3
echo "Installing web browsers and sublime text"
sh ${build}/./11-browsers.sh
sleep 3
echo "Compiling Scrot, Maim and Slop screen capture tools"
sh ${build}/./12-maim.sh
sleep 3
echo "Downloading and installing font packs"
sh ${build}/./13-fonts.sh
sleep 3
echo "Compiling termite terminal"
sh ${build}/./14-termite.sh
sleep 3
echo "Hacking Neofetch from debian repo"
sh ${build}/./15-other-apps.sh
sleep 3
echo "Setup complete"
sleep 5
exit 0
