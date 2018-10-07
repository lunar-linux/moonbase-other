OPTS+=" --includedir=/usr/include/$MODULE --libdir=/usr/lib/$MODULE --disable-static" &&

default_config &&
make PTHREAD_LIBS="-pthread -lpthread" &&
prepare_install &&
make install
