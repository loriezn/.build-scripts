#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki

USER=${USER}

# Build Directories
BUILDDIR=${HOME}/.build-scripts
MAKEDIR=${HOME}/.makedir
ROOTDIR=/root

# Dotfile Directories
DOTFILES=$BUILDDIR/dotfiles
ROOTDOTS=$BUILDDIR/rootdot

# Export Environment Variables
export USER
export BUILDDIR
export MAKEDIR
export ROOTDIR
export DOTFILES
export ROOTDOTS

