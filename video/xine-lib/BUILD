autoreconf -fi &&

sed -i 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

OPTS+=" --enable-mmap \
        --enable-static \
        --with-external-dvdnav \
        --enable-antialiasing" &&

default_build
