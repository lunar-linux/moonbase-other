(

  ./configure --without-gtk                   \
              --prefix=/usr                   \
              --infordir=/usr/share/info      \
              --mandir=/usr/share/man         \
              $OPTS                           &&
  make                                        &&
  prepare_install                             &&
  make install

) > $C_FIFO 2>&1
