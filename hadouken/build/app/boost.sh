#!/bin/sh

curl -o /tmp/boost.tar.gz -L http://downloads.sourceforge.net/project/boost/boost/1.58.0/boost_1_58_0.tar.gz
mkdir $HOME/boost && tar xvf /tmp/boost.tar.gz -C $HOME/boost --strip-components=1
cd $HOME/boost
./bootstrap.sh toolset=gcc-$COMPILER_VER --prefix=/usr/local --with-libraries=system,log,filesystem,program_options,thread
./b2 toolset=gcc-$COMPILER_VER install