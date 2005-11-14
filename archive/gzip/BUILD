(

  patch_it $SOURCE_CACHE/$SOURCE2 1     &&
  ./configure --build=$BUILD             \
              --prefix=/usr              \
              --bindir=/bin              \
              --infodir=/usr/share/info  \
              --mandir=/usr/share/man   &&
  default_make 

) > $C_FIFO 2>&1
