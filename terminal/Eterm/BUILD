(

  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --enable-multi-charset    \
               --with-delete=execute     \
               --with-theme-update     &&
  make                                 &&
  prepare_install                      &&
#  tic   doc/Eterm.ti                  &&
  make  install                        &&
  chmod  u+s  /usr/bin/Eterm

) > $C_FIFO 2>&1
