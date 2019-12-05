# hadouken source
git clone https://github.com/hadouken/hadouken $HOME/hadouken
cd $HOME/hadouken
git checkout tags/v5.2.0
git submodule update --init

# hadouken webui
mkdir -p $HOME/hadouken/linux/build/bin
cd $HOME/hadouken/webui

# hadouken js
zip -r $HOME/hadouken/linux/build/bin/webui.zip .
cp -R $HOME/hadouken/js $HOME/hadouken/linux/build/bin
	
# hadouken binary
export CC=/usr/bin/gcc-$COMPILER_VER
export CXX=/usr/bin/g++-$COMPILER_VER
export CPATH=$HOME/boost/include
export CPATH=$CPATH:$HOME/libtorrent/include
export LIBRARY_PATH=$HOME/boost/lib
export LIBRARY_PATH=$LIBRARY_PATH:$HOME/libtorrent/lib

cd $HOME/hadouken/linux/build
cmake ../../
make
make package