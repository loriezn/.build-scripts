#!/bin/bash
root=/root
dotr=/home/loki/00-build-scripts/rootdot

cd $root

# folders
ln -snf $dotr/.bash.d
ln -snf $dotr/scripts

# config
#mv $root/.config $root/.config-bu
#ln -snf $dotr/.config

# bash
mv $root/.bashrc $root/.bashrc-bu
ln -snf $dotr/.bashrc
#ln -snf $dotr/.bash_profile

# Xorg
ln -snf $dotr/.xinitrc
ln -snf $dotr/.Xresources

# set permissions
chown -R root:root ${root}/.bashrc
chown -R root:root ${root}/.bashrc-bu
chown -R root:root ${root}/.bash.d
chown -R root:root ${root}/scripts
chown -R root:root ${root}/.xinitrc
chown -R root:root ${root}/.Xresources

exit
