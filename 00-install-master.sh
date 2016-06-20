#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki

cp ${HOME}/00-build-scripts/99-vars.sh ${HOME}/.vars.sh

doSomeTask() {
	echo "Preparing machine build."
	sleep 3
}

showLoading() {
  mypid=$!
  loadingText=$1

  echo -ne "$loadingText\r"

  while kill -0 $mypid 2>/dev/null; do
    echo -ne "$loadingText.\r"
    sleep 0.5
    echo -ne "$loadingText..\r"
    sleep 0.5
    echo -ne "$loadingText...\r"
    sleep 0.5
    echo -ne "\r\033[K"
    echo -ne "$loadingText\r"
    sleep 0.5
  done

  echo "$loadingText...FINISHED"
}

doSomeTask & showLoading "INITALIZING"

echo "Please enter your user name"

read -p 'Username: ' USER
USER=${USER}

# Build Directories
BUILDDIR=${HOME}/00-build-scripts
MAKEDIR=${HOME}/makedir
ROOTDIR=/root

# Dotfile Directories
DOTFILES=${BUILD}/dotfiles
ROOTDOTS=${BUILD}/rootdot

# Export Environment Variables
export USER
export BUILDDIR
export MAKEDIR
export ROOTDIR
export DOTFILES
export ROOTDOTS

source ~/.vars.sh

# Create build directories and pull dependency repository down
mkdir ${MAKEDIR}
#git clone https://github.com/affintiyskin/00-build-scripts.git

sleep 3
echo "Linking user and root config dot files"
bash ${BUILDDIR}/./01-dot-links.sh
sudo bash ${BUILDDIR}/./02-root-dot-links.sh
sleep 3
echo "Upgrading system kernel"
bash ${BUILDDIR}/./03-kernel.sh
sleep 3
echo "Installing build tools"
bash ${BUILDDIR}/./04-build.sh
sleep 3
echo "Installing dependency utilities and applications"
bash ${BUILDDIR}/./05-utils.sh
sleep 3
echo "Installing python dependencies"
bash ${BUILDDIR}/./06-python.sh
sleep 3
echo "Installing Xorg display manager"
bash ${BUILDDIR}/./07-xorg.sh
sleep 3
echo "Compiling i3 window manager"
bash ${BUILDDIR}/./08-i3.sh
sleep 3
echo "Compiling composition manager"
bash ${BUILDDIR}/./09-compton.sh
sleep 3
echo "Compiling Rofi dropdown menu"
bash ${BUILDDIR}/./10-rofi.sh
sleep 3
echo "Installing web browsers and sublime text"
bash ${BUILDDIR}/./11-browsers.sh
sleep 3
echo "Compiling Scrot, Maim and Slop screen capture tools"
bash ${BUILDDIR}/./12-maim.sh
sleep 3
echo "Downloading and installing font packs"
bash ${BUILDDIR}/./13-fonts.sh
sleep 3
echo "Hacking Neofetch from debian repo"
bash ${BUILDDIR}/./14-other-apps.sh
sleep 3
echo "Compiling termite terminal"
bash ${BUILDDIR}/./15-termite.sh
sleep 3
echo "Compiling termite terminal"
bash ${BUILDDIR}/./16-nodejs.sh
sleep 3
echo "Setup complete"
sleep 5
exit
