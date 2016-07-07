#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki

cp ${HOME}/.build-scripts/99-vars.sh ${HOME}/.vars.sh

setusername() {
	echo "Preparing machine build."
	sleep 2

	# Build Directories
	BUILDDIR=${HOME}/.build-scripts
	MAKEDIR=${HOME}/makedir
	ROOTDIR=/root

	# Dotfile Directories
	DOTFILES=${BUILD}/dotfiles
	ROOTDOTS=${BUILD}/rootdot

	echo "Please enter your user name"
	read -p 'Username: ' USER
	USER=${USER}
	sleep 3

	# Export Environment Variables
	export USER
	export BUILDDIR
	export MAKEDIR
	export ROOTDIR
	export DOTFILES
	export ROOTDOTS
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

  echo "$loadingText...COMPLETED"
}

setusername & showLoading "INITALIZING"

source ~/.vars.sh

# Create build directories and pull dependency repository down
mkdir ${MAKEDIR}
#git clone https://github.com/affintiyskin/00-build-scripts.git


loadKernel() {
	echo "Linking user and root config dot files"
	bash ${BUILDDIR}/./01-dot-links.sh
	sudo bash ${BUILDDIR}/./02-root-dot-links.sh
	sleep 1
	echo "Upgrading system kernel"
	bash ${BUILDDIR}/./03-kernel.sh
}

loadKernel & showLoading "RUNNING"

installDeps() {
	echo "Installing build tools"
	bash ${BUILDDIR}/./04-build.sh
	sleep 3
	echo "Installing dependency utilities and applications"
	bash ${BUILDDIR}/./05-utils.sh
	sleep 3
}

installDeps & showLoading "INSTALLING DEPENDICIES"

installPython() {
	echo "Installing python dependencies"
	bash ${BUILDDIR}/./06-python.sh
}

installPython & showLoading "INSTALLING PYTHON + PIP"

installXorg() {
	echo "Installing Xorg display manager"
	bash ${BUILDDIR}/./07-xorg.sh
}

installXorg & showLoading "INSTALLING XORG WINDOWN MANAGER"

compileI3() {
	echo "Compiling i3 window manager"
	bash ${BUILDDIR}/./08-i3.sh
}

compileI3 & showLoading "COMPILING I3 WINDOW MANAGER"

compileCompton() {
	echo "Compiling composition manager"
	bash ${BUILDDIR}/./09-compton.sh
}

compileCompton & showLoading "COMPILING COMPOSITOR"

compileRofi() {
echo "Compiling Rofi dropdown menu"
bash ${BUILDDIR}/./10-rofi.sh
}

compileRofi & showLoading "COMPILING ROFI MENU"

installWebSublime() {
echo "Installing web browsers and sublime text"
bash ${BUILDDIR}/./11-browsers.sh
}

installWebSublime & showLoading "INSTALLING WEB BROWSERS & SUBLIME TEXT"

compileSCapture() {
echo "Compiling Scrot, Maim and Slop screen capture tools"
bash ${BUILDDIR}/./12-maim.sh
}

compileSCapture & showLoading "COMPILING SCREEN CAPTURE TOOLS"

installFonts() {
echo "Downloading and installing font packs"
bash ${BUILDDIR}/./13-fonts.sh
}

installFonts & showLoading "INSTALLING FONT PACKS"

neoHack() {
echo "Hacking Neofetch from debian repo"
bash ${BUILDDIR}/./14-other-apps.sh
}

neoHack & showLoading "HACKING NEOFETCH FROMDEBIAN"

compileTermite() {
echo "Compiling termite terminal"
bash ${BUILDDIR}/./15-termite.sh
}

compileTermite & showLoading "COMPILING TERMITE TERMINAL"

setNodejs() {
echo "Setting up Node.js"
bash ${BUILDDIR}/./16-nodejs.sh
}

setNodejs & showLoading "SETTING UP NODEJS"

setDocker() {
echo "Setting up Docker"
bash ${BUILDDIR}/./17-docker.sh
}
setDocker & showLoading "SETTING UP DOCKER"

sleep 1
echo "Setup complete"
sleep 3
sudo reboot
exit
