(

  export CC="gcc"  &&

  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               --bindir=/usr/bin          \
               --sbindir=/usr/sbin        \
               --datadir=/usr/share       \
               --localstatedir=/var       \
               --libdir=/usr/lib          \
               --includedir=/usr/include  \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man    \
               --enable-shared            \
               --enable-static           &&

  default_make

) > $C_FIFO 2>&1
