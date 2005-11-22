(

   ./configure  --prefix=/usr              \
                --build=$BUILD             \
                --sysconfdir=/etc          \
                --localstatedir=/var       \
                --infodir=/usr/share/info  \
                --mandir=/usr/share/man    \
                --with-croco               \
                --with-svgz                \
                --without-art              \
                --disable-gtk-doc          \
                $OPTS                     &&
    default_make                          &&
# Note: added this sedit to fix a bug in the librsvg-2.0.pc file as libart
# backend has been disabled but pkgconfig thinks its still there
    sedit "s/ -lrsvg-2-libart//" /usr/lib/pkgconfig/librsvg-2.0.pc

) > $C_FIFO 2>&1
