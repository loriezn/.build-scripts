#!/usr/bin/env sh
xmk=/home/loki/makedir
cd $xmk
git clone https://github.com/affinityskin/vte-ng.git
sudo apt-get install g++ libgtk-3-dev gtk-doc-tools gnutls-bin valac
sudo apt-get install libglib3.0-cil-dev libgnutls28-dev libgirepository1.0-dev
sudo apt-get install libxml2-utils gperf libglib-object-introspection-perl
cd vte-ng && ./autogen.sh && make && sudo make install
cd $xmk
git clone --recursive https://github.com/affinityskin/termite.git
cd $xmk/termite
git checkout -b c6d1425189bccfc57393e11458cb3efcf566ac86
make && sudo make install
sudo cp /usr/local/lib/libvte-2.91.a /usr/local/lib/libvte-2.91.la \
    /usr/local/lib/libvte-2.91.so /usr/local/lib/libvte-2.91.so.0 \
    /usr/local/lib/libvte-2.91.so.0.4000.2 /usr/lib
sudo mkdir -p /lib/terminfo/x; sudo ln -s \
    /usr/local/share/terminfo/x/xterm-termite \
    /lib/terminfo/x/xterm-termite
cp /home/loki/00-build-scripts/deskopen $xmk/termite
deskopen termite.desktop
exit
