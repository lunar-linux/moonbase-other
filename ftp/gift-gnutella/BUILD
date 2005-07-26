(

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --sysconfdir=/etc          \
               --localstatedir=/var       \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               $OPTS                     &&

  PREFIX=/usr/lib/giFT  &&
  default_make

) > $C_FIFO 2>&1
