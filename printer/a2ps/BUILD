(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --sysconfdir=/etc/a2ps    \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               $OPTS                    &&

  default_make  &&
  rm    -f  /a2ps*.el

) > $C_FIFO 2>&1
