(

#  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  sedit  "s/-O2/$CFLAGS $LDFLAGS/"  Makefile &&
  make                   &&
  prepare_install        &&
  make  destdir=/usr           \
        sbindir=/sbin          \
        mandir=/usr/share/man  \
        install

) > $C_FIFO 2>&1
