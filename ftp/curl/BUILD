echo '/* not used */' > include/curl/types.h &&

OPTS+=" --enable-manual \
        --enable-threaded-resolver \
        --enable-versioned-symbols \
        --disable-curldebug \
        --disable-static \
        --without-libpsl \
        --without-librtmp \
        --with-zlib \
        --with-libidn \
        --with-random=/dev/urandom"

default_build &&

install -m644 {,/usr/}include/curl/types.h
