(

  chmod 755 autogen.sh                   &&
  ./autogen.sh                           &&
  ./configure  --build=$BUILD            \
               --bindir=/usr/bin         \
               --sbindir=/usr/sbin       \
               --datadir=/usr/share      \
               --localstatedir=/var      \
               --libdir=/usr/lib         \
               --includedir=/usr/include \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-shared           &&
  default_make

) > $C_FIFO 2>&1
