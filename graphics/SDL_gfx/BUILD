OPTS+=" --disable-static" &&

unset CFLAGS

./configure --prefix=/usr \
            --build=$BUILD \
            --sysconfdir=/etc \
            --localstatedir=/var \
            $OPTS &&

default_make
