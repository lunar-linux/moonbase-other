
OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_INSTALL_LIBDIR=lib" &&

cd auto &&

make PYTHON=python &&

cd ../ &&
cmake build/cmake/. $OPTS &&

default_make
