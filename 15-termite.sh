#!/bin/bash
#
# i3 profile Setup Script
#
# Distribution: Ubuntu Server 15.10
#
# Author:	loki
source ${HOME}/.vars.sh
cd ${MAKEDIR}
git clone https://github.com/thestinger/vte-ng.git
sudo apt-get install -y g++ libgtk-3-dev doxygen gtk-doc-tools gnutls-bin valac libglib3.0-cil-dev libgnutls28-dev libgirepository1.0-dev libxml2-utils gperf libglib-object-introspection-perl
cd vte-ng && ./autogen.sh && make && sudo make install
cd ${MAKEDIR}
git clone --recursive https://github.com/thestinger/termite.git
sleep 1
cd ${MAKEDIR}/termite
git checkout -b c6d1425189bccfc57393e11458cb3efcf566ac86
sleep 1
make && sudo make install
sudo cp /usr/local/lib/libvte-2.91.a /usr/local/lib/libvte-2.91.la
sudo cp /usr/local/lib/libvte-2.91.so /usr/local/lib/libvte-2.91.so.0
sudo cp /usr/local/lib/libvte-2.91.so.0.4000.2 /usr/lib
sudo mkdir -p /lib/terminfo/x
 sudo ln -s /usr/local/share/terminfo/x/xterm-termite /lib/terminfo/x/xterm-termite
cp ${BUILDDIR}/deskopen ${MAKEDIR}/termite
cd ${MAKEDIR}/termite && sudo ./deskopen termite.desktop
exit
