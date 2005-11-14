(

  patch_it $SOURCE_CACHE/$SOURCE2 1      &&
  ./configure  --prefix=/usr              \
               --sysconfdir=/etc          \
               --infodir=/usr/share/info  \
               --mandir=/usr/share/man   &&
  default_make

) > $C_FIFO 2>&1
