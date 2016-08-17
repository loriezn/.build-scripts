#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
echo "Installing Python Pakcages"
sudo apt-get install -y \
#	python-pip \
	libjpeg-dev \
	zlib1g-dev \
	libtiff5-dev \
	libjpeg8-dev \
	libssl-dev \
	libffi-dev \
	liblcms2-dev \
	libwebp-dev \
	tcl8.6-dev \
	tk8.6-dev \
	python-tk \
	libfreetype6-dev \
	python-dev \
	libiw-dev
pip install --upgrade pip
pip3 install basiciw
pip3 install pillow
pip install pyyaml
pip install urllib3
pip install suds
pip install netifaces
exit
