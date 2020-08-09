if [ `arch` == x86_64 ] ; then
    cp /usr/share/automake/config.guess auxdir/ &&
    cp /usr/share/automake/config.sub auxdir/
fi &&

./configure  --build=$BUILD            \
             --prefix=/usr             \
             --sysconfdir=/etc/a2ps    \
             --localstatedir=/var      \
             --infodir=/usr/share/info \
             --mandir=/usr/share/man   \
             $OPTS                    &&

default_make  &&

rm -f /a2ps*.el
