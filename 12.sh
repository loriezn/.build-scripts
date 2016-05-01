#!/usr/bin/env sh
xmk=/home/loki/mkdir
cd $xmk
git clone https://github.com/thestinger/vte-ng.git
apt-get install g++ libgtk-3-dev gtk-doc-tools gnutls-bin valac
apt-get install libglib3.0-cil-dev libgnutls28-dev libgirepository1.0-dev
apt-get install libxml2-utils gperf
cd vte-ng && ./autogen.sh && make && sudo make install
cd $xmk
git clone --recursive https://github.com/thestinger/termite.git
cd $xmk/termite
git checkout -b c6d1425
make && sudo make install
cp /home/loki/00-build-scripts/desktopen $xmk/termite
desktopen termite.desktop
cp /usr/local/lib/libvte-2.91.a /usr/local/lib/libvte-2.91.la \
    /usr/local/lib/libvte-2.91.so /usr/local/lib/libvte-2.91.so.0 \
    /usr/local/lib/libvte-2.91.so.0.4000.2 /usr/lib
mkdir -p /lib/terminfo/x; sudo ln -s \
    /usr/local/share/terminfo/x/xterm-termite \
    /lib/terminfo/x/xterm-termite

