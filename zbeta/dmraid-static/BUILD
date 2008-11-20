(
  ./configure  --build=$BUILD           \
               --prefix=/usr            \
               --sbindir=/sbin          \
               --libdir=/lib            \
               --mandir=/usr/share/man  \
               --sysconfdir=/etc        \
               --enable-static_link     \
               $OPTS                   &&
  make                                 &&
  prepare_install                      &&
  cp  tools/dmraid  /sbin/dmraid.static

) > $C_FIFO 2>&1
