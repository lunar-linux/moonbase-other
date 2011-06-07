(

  export CFLAGS="$CFLAGS -fPIC"

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure  --prefix=/usr            \
               --sysconfdir=/etc        \
               --mandir=/usr/share/man  \
               --localstatedir=/var     \
               --disable-static         \
               --enable-shared         &&

  default_make

) > $C_FIFO 2>&1
