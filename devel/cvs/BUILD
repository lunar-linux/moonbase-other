(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --with-gssapi=no          \
               $OPTS                     &&

  default_make

) > $C_FIFO 2>&1


    
