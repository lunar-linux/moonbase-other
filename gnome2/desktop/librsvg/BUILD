(

   ./configure  --prefix=/usr              \
                --build=$BUILD             \
                --sysconfdir=/etc/$MODULE  \
                --localstatedir=/var       \
                --infodir=/usr/share/info  \
                --mandir=/usr/share/man    \
                --with-croco               \
                --with-svgz                \
                --disable-gtk-doc          \
                $OPTS                     &&

    sedit 's@$(libdir)/mozilla/plugins@/opt/lunar/plugins@g' moz-plugin/Makefile &&

    default_make

) > $C_FIFO 2>&1
