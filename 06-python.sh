#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
xmk="/home/loki/makedir"
echo "Installing Python Pakcages"
sudo apt-get install -y \
	python-pip \
	python-urllib3 \
	python-netifaces \
	python-yaml \
	python-suds \
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
	python2.7-dev \
	python-setuptools \
	python-dev \
	python3-pip \
	python3-setuptools \
	libiw-dev
sudo easy_install pip
pip install --upgrade pip
pip3 install basiciw
pip3 install pillow
exit
