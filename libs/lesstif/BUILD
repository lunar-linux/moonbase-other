(

  ./configure  --prefix=/usr/X11          \
               --sysconfdir=/etc          \
               --enable-production        \
               --enable-shared            \
               --enable-static            \
               --disable-debug            \
               $OPTS                     &&
  make                                   &&
  prepare_install                        &&
  make    install                        &&
  rm  -rf  $DOCUMENT_DIRECTORY/LessTif   &&
  mv  /usr/X11/LessTif  $DOCUMENT_DIRECTORY &&
  ldconfig

) > $C_FIFO 2>&1
