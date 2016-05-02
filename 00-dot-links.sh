#!/bin/bash
dot=/home/loki/00-build-scripts/dotfiles
loki=/home/loki

cd $loki
ln -sn $dot/.bash.d
#mv $loki/.config $loki/.config-bu
ln -sn $dot/.config
ln -sn $dot/.i3
ln -sn $dot/.vim
ln -sn $dot/.weechat
ln -sn $dot/scripts
ln -sn $dot/.Xresources
ln -sn $dot/.bash_profile
#mv $loki/.bashrc $loki/.bashrc.bu
ln -sn $dot/.bashrc
ln -sn $dot/.compton.conf
ln -sn $dot/.gitconfig
ln -sn $dot/.gitignore
ln -sn $dot/.gtkrc-2.0
ln -sn $dot/.vimrc
ln -sn $dot/.xinitrc
