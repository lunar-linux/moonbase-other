(

  rm  -r  dialog

  patch  -p1  <  $SCRIPT_DIRECTORY/teTeX.patch

  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --with-system-zlib        \
               --with-system-ncurses     \
               --with-system-libwww      \
               --without-texinfo         \
               --without-dialog          \
               --disable-multiplatform   \
               $OPTS                     &&
  make  all                              &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
