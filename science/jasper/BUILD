(

  export CFLAGS="$CFLAGS -fPIC"

  ./configure  --prefix=/usr            \
               --sysconfdir=/etc        \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --enable-shared         &&

  default_make

) > $C_FIFO 2>&1
