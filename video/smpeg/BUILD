OPTS+=" --disable-static --disable-gtk-player" &&

CFLAGS+=" -Wno-error=narrowing" &&

default_config &&
sedit 's/gcc/g++/' Makefile &&
default_make
