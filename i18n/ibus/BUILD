touch INSTALL &&
NOCONFIGURE=1 ./autogen.sh &&

OPTS+=" --enable-ui \
        --enable-python-library \
        --disable-emoji-dict \
        --disable-memconf \
        --disable-schemas-install \
        --with-ucd-dir=/usr/share/unicode \
        --with-python=python3 \
        --disable-unicode-dict"

default_build
