# gcc14 buildfix
export CFLAGS+=" -Wno-incompatible-pointer-types -Wno-int-conversion"

OPTS+=" --prefix=/usr \
        --enable-dynamic \
        --with-system-libtiff \
        --disable-compile-inits \
        --with-ijs \
        --with-jbig2dec \
        --with-fontpath=/usr/share/fonts/gsfonts \
        --enable-openjpeg \
        --enable-freetype \
        --with-libpaper \
        --disable-hidden-visibility"

./autogen.sh $OPTS &&

default_make &&

make install-so

