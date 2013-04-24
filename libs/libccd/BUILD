CFLAGS+=" -fPIC" &&

cd src &&
make &&

prepare_install &&

make install PREFIX=/usr &&

cd ../doc/ &&
gather_docs *
