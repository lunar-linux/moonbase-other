(

   ./configure  --prefix=${GNOME_2280_PREFIX:-/usr}  \
                --build=$BUILD        \
                --sysconfdir=/etc     \
                --localstatedir=/var  \
                --infodir=${GNOME_2280_PREFIX:-/usr}/share/info  \
                --mandir=${GNOME_2280_PREFIX:-/usr}/share/man    \
                $OPTS                                           &&
    default_make

) > $C_FIFO 2>&1
