(

  export CFLAGS="$CFLAGS -fPIC"

  ./configure  --prefix=/usr            \
               --sysconfdir=/etc        \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --disable-static         \
               --enable-shared         &&

  default_make

) > $C_FIFO 2>&1
