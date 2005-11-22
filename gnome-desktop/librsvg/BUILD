(

   ./configure  --prefix=/usr              \
                --build=$BUILD             \
                --sysconfdir=/etc          \
                --localstatedir=/var       \
                --infodir=/usr/share/info  \
                --mandir=/usr/share/man    \
                --with-croco               \
                --with-svgz                \
                --disable-gtk-doc          \
                $OPTS                     &&
    default_make

) > $C_FIFO 2>&1
