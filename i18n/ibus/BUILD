touch INSTALL &&
NOCONFIGURE=1 ./autogen.sh &&

OPTS+=" --enable-ui \
        --enable-python-library \
        --disable-emoji-dict \
        --disable-memconf \
        --disable-schemas-install \
        --with-ucd-dir=/usr/share/unicode \
        --with-python=python3 \
        --disable-unicode-dict" &&

if ! in_depends $MODULE gtk+-2 && ! in_depends $MODULE gtk+-3; then
  OPTS+=" --disable-xim"
fi &&

default_build
