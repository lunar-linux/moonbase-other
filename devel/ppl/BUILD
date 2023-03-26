autoreconf -fi &&

export CFLAGS+=" ${CFLAGS} -L/usr/lib/swipl/lib/x86_64-linux"

OPTS+=" --enable-arch=$(arch) --disable-static --enable-interfaces=c,cxx,swi_prolog"

default_build
