#!/bin/bash
source ${HOME}/vars.sh

cd ${HOME}
cp ${HOME}/.bashrc ${HOME}/.bashrc.bu
ln -snf ${DOTFILES}/.bashrc
ln -snf ${DOTFILES}/.bash.d
mv ${HOME}/.config ${HOME}/.config-bu
ln -snf ${DOTFILES}/.config
ln -snf ${DOTFILES}/.i3
ln -snf ${DOTFILES}/.vim
ln -snf ${DOTFILES}/.weechat
ln -snf ${DOTFILES}/scripts
ln -snf ${DOTFILES}/.Xresources
ln -snf ${DOTFILES}/.bash_profile
ln -snf ${DOTFILES}/.compton.conf
ln -snf ${DOTFILES}/.gitconfig
ln -snf ${DOTFILES}/.gitignore
ln -snf ${DOTFILES}/.gtkrc-2.0
ln -snf ${DOTFILES}/.vimrc
ln -snf ${DOTFILES}/.xinitrc

source ~/.bashrc
exit
