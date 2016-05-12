#!/bin/bash
dot=/home/loki/00-build-scripts/dotfiles
loki=/home/loki

cd $loki
cp $loki/.bashrc $loki/.bashrc.bu
ln -snf $dot/.bash.d
#mv $loki/.config $loki/.config-bu
ln -snf $dot/.config
ln -snf $dot/.i3
ln -snf $dot/.vim
ln -snf $dot/.weechat
ln -snf $dot/scripts
ln -snf $dot/.Xresources
ln -snf $dot/.bash_profile
#mv $loki/.bashrc $loki/.bashrc.bu
ln -snf $dot/.bashrc
ln -snf $dot/.compton.conf
ln -snf $dot/.gitconfig
ln -snf $dot/.gitignore
ln -snf $dot/.gtkrc-2.0
ln -snf $dot/.vimrc
ln -snf $dot/.xinitrc
