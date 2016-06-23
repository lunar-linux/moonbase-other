echo '/* not used */' > include/curl/types.h &&

OPTS+=" --disable-static \
        --with-zlib \
        --with-random=/dev/urandom" &&

default_build &&

install -m644 {,/usr/}include/curl/types.h
