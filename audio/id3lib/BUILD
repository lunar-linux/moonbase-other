libtoolize -fc &&
aclocal &&
autoconf &&
automake --add-missing --copy &&

OPTS+=" --disable-static" &&

default_config &&

sedit 's:LIBS =:LIBS = -lz -lstdc++:' src/Makefile &&

default_make
