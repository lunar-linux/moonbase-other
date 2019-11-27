
OPTS+=" -DCMAKE_INSTALL_PREFIX=/usr" &&

cd auto &&

make PYTHON=python2 &&

cd ../ &&
cmake build/cmake/. $OPTS &&

default_make
