# Its include conflicts with glibc:/usr/include/crypt.h
OPTS+=" --enable-hashes=strong,glibc \
        --enable-obsolete-api=no \
        --disable-failure-tokens \
        --disable-static \
        --includedir=/usr/include/$MODULE"

default_build
