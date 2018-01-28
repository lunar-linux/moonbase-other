./autogen.sh &&

export CFLAGS="$CFLAGS -DMS2_GIT_VERSION=\"\\\"unknown\\\"\"" &&

OPTS+=" --disable-gsm     \
        --enable-video    \
        --enable-debug=no \
        --disable-static  \
        --disable-tests   \
        --with-srtp=/usr  \
        --enable-non-free-codecs \
        --disable-strict" &&

sedit "s:/bin/echo:/usr/bin/echo:g" src/Makefile.am &&

default_build
