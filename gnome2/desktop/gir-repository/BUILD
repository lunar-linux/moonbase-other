(

   ./configure  --prefix=${GNOME210_PREFIX:-/usr}  \
                --build=$BUILD        \
                --sysconfdir=/etc     \
                --localstatedir=/var  \
                --infodir=${GNOME210_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME210_PREFIX:-/usr}/share/man    \
                $OPTS                                         &&

   sedit "s:Babl-0.0:Babl-0.1:g" gir/Makefile &&
   sedit "s:babl-0.0:babl-0.1:g" gir/Makefile &&

   default_make

) > $C_FIFO 2>&1
