sedit "s:/bin/::g" Makefile.in &&

OPTS+=" --enable-reentrant" &&

default_config &&
make shared &&
make utils &&

prepare_install &&
make install
