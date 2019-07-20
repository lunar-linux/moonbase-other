OPTS+=" --prefix=/usr \
        --sysconfdir=/etc \
        --disable-sanitizers"

CPPFLAGS+="-U_FORTIFY_SOURCE"

mkdir build && cd build &&

../configure $OPTS &&

default_make
