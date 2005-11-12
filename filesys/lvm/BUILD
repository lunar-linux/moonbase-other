(

  cd  $VERSION                         &&
  patch_it $SOURCE2 2                  &&
  ./configure  --build=$BUILD           \
               --prefix=/usr            \
               --sbindir=/sbin          \
               --libdir=/lib            \
               --mandir=/usr/share/man  \
               --sysconfdir=/etc       &&
  default_make

) > $C_FIFO 2>&1
