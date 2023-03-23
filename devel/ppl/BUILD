autoreconf -fi &&

OPTS+=" --enable-arch=$(arch) --disable-static --enable-interfaces="c,cxx,swi_prolog""

CPPFLAGS+="$(pkgconf --cflags-only-I swipl)"

default_build
