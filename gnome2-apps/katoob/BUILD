(

  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --with-everything        \
               $OPTS                    &&

  default_make

) > $C_FIFO 2>&1
