#!/bin/bash
echo "Preparing machine configuration"
build=${HOME}/00-build-scripts
sleep 1
echo "Linking user and root config dot files"
${build}/./01-dot-links.sh
sudo ${build}/./02-root-dot-links.sh
sleep 1
echo "Upgrading system kernel"
${build}/./03-kernel.sh
sleep 1
echo "Installing build tools"
${build}/./04-buiild.sh
sleep 1
echo "Installing dependency utilities and applications
${build}/./05-utils.sh
sleep 1
echo "Installing python dependencies"
${build}/./06-python.sh
sleep 1
echo "Installing Xorg display manager"
${build}/./07-xorg.sh
sleep 1
echo "Compiling i3 window manager"
${build}/./08-i3.sh
sleep 1
echo "Compiling composition manager"
${build}/./09-compton.sh
sleep 1
echo "Compiling Rofi dropdown menu"
${build}/./10-rofi.sh
sleep 1
echo "Installing web browsers and sublime text"
${build}/./11-browsers.sh
sleep 1
echo "Compiling Scrot, Maim and Slop screen capture tools"
${build}/./12-maim.sh
sleep 1
echo "Downloading and installing font packs"
${build}/./13-fonts.sh
sleep 1
echo "Compilit termite terminal "
${build}/./14-termite.sh
sleep 1
echo "Hacking Neofetch from debian repo"
${build}/./15-other-apps.sh
sleep 1
echo "."
sleep 0.5
echo ".."
sleep 0.5
echo "..."
sleep 0.5
echo "...."
sleep 0.5
echo "....."
sleep 0.5
echo "......"
sleep 0.5
echo "......."
sleep 0.5
echo "........"
sleep 0.5
echo "........."
sleep 0.5
echo ".........."
sleep 0.5
echo "Complete \(\"\,\)"
sleep 5
exit 0
