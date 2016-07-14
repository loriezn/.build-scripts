#!/bin/bash
source ${HOME}/.vars.sh

cd ${ROOTDIR}

# folders
ln -snf ${ROOTDOTS}/.bash.d
ln -snf ${ROOTDOTS}/.scripts

# config
#mv ${ROOTDIR}/.config ${ROOTDIR}/.config-bu
#ln -snf ${ROOTDOTS}/.config

# bash
mv ${ROOTDIR}/.bashrc ${ROOTDIR}/.bashrc-bu
ln -snf ${ROOTDOTS}/.bashrc
#ln -snf ${ROOTDOTS}/.bash_profile

# Xorg
ln -snf ${ROOTDOTS}/.xinitrc
ln -snf ${ROOTDOTS}/.Xresources

# set permissions
chown -R root:root ${ROOTDIR}/.bashrc
chown -R root:root ${ROOTDIR}/.bashrc-bu
chown -R root:root ${ROOTDIR}/.bash.d
chown -R root:root ${ROOTDIR}/.scripts
chown -R root:root ${ROOTDIR}/.xinitrc
chown -R root:root ${ROOTDIR}/.Xresources

exit
