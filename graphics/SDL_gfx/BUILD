(

  unset  CFLAGS
  ./configure  --build=$BUILD        \
               --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                &&
  default_make

) > $C_FIFO 2>&1
