libtoolize --force --copy &&
autoreconf -fi -I m4 &&

mkdir -p auxdir &&

if [ `arch` == x86_64 ] ; then
    cp /usr/share/automake/config.guess auxdir/ &&
    cp /usr/share/automake/config.sub auxdir/
fi &&

touch doc/*.info &&

LIBS+=" -lm" ./configure  --build=$BUILD \
             --prefix=/usr             \
             --sysconfdir=/etc/a2ps    \
             --localstatedir=/var      \
             --infodir=/usr/share/info \
             --mandir=/usr/share/man   \
             --with-medium=letter      \
             --enable-shared           \
             $OPTS                    &&

default_make
