(

  unset  CFLAGS

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure  --build=$BUILD        \
               --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                &&
  default_make

) > $C_FIFO 2>&1
