export GUILE_CONFIG+=" guile-config-1.8" &&

OPTS+=" --disable-documentation"

./autogen.sh --noconfigure &&

mkdir build &&
cd build/ &&

../configure --prefix=/usr $OPTS &&

default_make
