(  

   ./configure  --prefix=/usr           \
                --sysconfdir=/etc       \
                --mandir=/usr/man       \
                --localstatedir=/var    \
                --sbindir=/sbin         \
                --datadir=/usr/share    \
                --enable-all            \
                $OPTS                  &&

    default_make

) > $C_FIFO 2>&1
