mkdir -p /var/lib/lynx &&

OPTS+=" --libdir=/var/lib/lynx \
        --enable-widec         \
        --enable-cgi-links     \
        --enable-nsl           \
        --enable-read-eta      \
        --enable-scrollbar     \
        --enable-gzip-help     \
        --enable-color-style   \
        --with-screen=ncursesw \
        --with-zlib"

default_config &&

if in_depends $MODULE %OSSL; then
  sedit 's/.*USE_OPENSSL_INCL.*/#define USE_OPENSSL_INCL 1/' lynx_cfg.h
fi &&

default_make &&

make install-help &&
make install-doc  &&

cp -bp lynx.cfg /etc/lynx.cfg &&
rm -f /usr/bin/lynx.old
