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
#	python-urllib3 \
#	python-netifaces \
#	python-yaml \
#	python-suds \
#	python-tk \
#	python3-pip \
#	python3-setuptools \
	libjpeg-dev \
	zlib1g-dev \
	libtiff5-dev \
	libjpeg8-dev \
	libssl-dev \
	liblcms2-dev \
	libwebp-dev \
	tcl8.6-dev \
	tk8.6-dev \
	libfreetype6-dev \
	libiw-dev \
	python-dev \
	python3-dev
curl https://bootstrap.pypa.io/get-pip.py | sudo -H python
curl https://bootstrap.pypa.io/3.2/get-pip.py | sudo -H python
sudo -H python /tmp get-pip.py
sudo -H pip install --upgrade pip
sudo -H pip install --upgrade setuptools wheel
sudo -h pip install 	urllib3 \
			basiciw \
			pillow \
			netifaces \
			PyYAML \
			suds
exit
