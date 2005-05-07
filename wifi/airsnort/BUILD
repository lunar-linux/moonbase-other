( 

  echo CFLAGS:= $CFLAGS  &&
  echo OPTS:= $OPTS      &&
  set -x && #Let's show the logs what we've used for debug
  ./configure --build=$BUILD            \
              --prefix=/usr             \
              --sysconfdir=/etc         \
              --localstatedir=/var      \
              --infodir=/usr/share/info \
              --mandir=/usr/share/man   \
              $OPTS                    &&
  set +x      ##turn it off so that the logs stay readable
  default_make

) > $C_FIFO 2>&1
