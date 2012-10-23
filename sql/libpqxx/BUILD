(

  
  ./configure  --sysconfdir=/etc        \
               --prefix=/usr            \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --enable-shared          \
               --disable-static         \
               $OPTS                    &&


  default_make

) > $C_FIFO 2>&1

