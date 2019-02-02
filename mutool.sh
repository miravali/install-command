#Mutool Installation

mkdir -p /opt/softwares

cd /opt/softwares

yum -y install gcc-c++

git clone --recursive git://git.ghostscript.com/mupdf.git

cd mupdf

git submodule update --init

make HAVE_X11=no HAVE_GLUT=no prefix=/usr/local install

#yum -y install gcc-c++

cp -rf build/release/mutool /bin
