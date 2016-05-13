#!/bin/bash
dot=/root/rootdot
root=/root
loki=/home/loki/00-build-scripts

cp -av $loki/rootdot $root
chown -R root:root $root/rootdot
cd $root
cp $root/.bashrc $root/.bashrc.bu
ln -snf $dot/.bash.d
#mv $root/.config $root/.config-bu
ln -snf $dot/.config
ln -snf $dot/.i3
ln -snf $dot/.vim
ln -snf $dot/.weechat
ln -snf $dot/scripts
ln -snf $dot/.Xresources
ln -snf $dot/.bash_profile
#mv $root/.bashrc $root/.bashrc.bu
ln -snf $dot/.bashrc
ln -snf $dot/.compton.conf
ln -snf $dot/.gitconfig
ln -snf $dot/.gitignore
ln -snf $dot/.gtkrc-2.0
ln -snf $dot/.vimrc
ln -snf $dot/.xinitrc
