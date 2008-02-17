(
  patch_it $SOURCE2 1 &&
  ./configure  --build=$BUILD           \
               --prefix=/usr            \
               --sbindir=/sbin          \
               --libdir=/lib            \
               --mandir=/usr/share/man  \
               --sysconfdir=/etc        \
               --enable-static_link     \
               $OPTS                   &&
  default_make

) > $C_FIFO 2>&1
