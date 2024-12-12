mkdir -p /var/lib/lynx &&

OPTS+=" --libdir=/var/lib/lynx \
        --enable-widec         \
        --enable-cgi-links     \
        --enable-nsl-fork      \
        --enable-read-eta      \
        --enable-scrollbar     \
        --enable-gzip-help     \
        --enable-color-style   \
        --with-screen=ncursesw \
        --with-zlib"

default_config &&

default_make &&

make install-help &&
make install-doc  &&

if [ ! -e /etc/lynx.cfg ]; then
  install -m 644 $SOURCE_DIRECTORY/lynx.cfg /etc/lynx.cfg
fi
