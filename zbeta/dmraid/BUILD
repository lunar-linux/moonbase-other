(
  ./configure  --build=$BUILD           \
               --prefix=/usr            \
               --sbindir=/sbin          \
               --libdir=/lib            \
               --mandir=/usr/share/man  \
               --sysconfdir=/etc        \
               $OPTS                   &&
  default_make

) > $C_FIFO 2>&1
