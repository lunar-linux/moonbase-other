(

  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --enable-ipv6             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                     &&

  default_make 
) > $C_FIFO 2>&1
