(

  echo CFLAGS:= $CFLAGS                   &&
  echo OPTS:= $OPTS                       &&
  patch_it $SCRIPT_DIRECTORY/$SOURCE2 0
  set -x && #Let's show the logs what we've used for debug
  ./configure  --build=$BUILD            \
               --prefix=/usr             \
               --sysconfdir=/etc         \
               --localstatedir=/var      \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --with-hal=$HAL           \
               $OPTS                     &&
  set +x      ##turn it off so that the logs stay readable
  make &&
  prepare_install &&
  make install 

) > $C_FIFO 2>&1 
