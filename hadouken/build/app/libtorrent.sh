#!/bin/sh

curl -o /tmp/libtorrent.tar.gz -k -L https://github.com/arvidn/libtorrent/archive/libtorrent-1_0_11.tar.gz
mkdir $HOME/libtorrent && tar xvf /tmp/libtorrent.tar.gz -C $HOME/libtorrent --strip-components=1
cd $HOME/libtorrent
./autotool.sh
./configure --with-boost=/usr/local --enable-debug=no --enable-deprecated-functions=no --prefix=/usr/local
make
make install