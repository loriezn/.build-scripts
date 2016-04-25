#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
xmk="/home/loki/makedir"
mkdir $xmk
echo "Installing Python Pakcages"
apt-get install -y \
	python-pip \
	python-urllib3 \
	python-netifaces \
	python-yaml \
	python-suds \
cd $xmk
git clone https://github.com/jeffkaufman/icdiff.git
chmod +x $xmk/icdiff/setup.py
pip install $xmk/icdiff/setup.py
apt-get install python-setuptools
easy_install pip
apt-get install python-dev
pip3 install --upgrade pip
pip3 install basiciw
apt-get install -y \
	libjpeg-dev \
	zlib1g-dev \
	libtiff5-dev \
	libjpeg8-dev \
	liblcms2-dev \
	libwebp-dev \
	tcl8.6-dev \
	tk8.6-dev \
	python-tk \
	libfreetype6-dev \
	python2.7-dev
pip3 install pillow
exit

