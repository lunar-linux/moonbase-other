(

  rm  -r  dialog

  patch  -p1  <  $SCRIPT_DIRECTORY/teTeX.patch

  ./configure  --prefix=/usr             \
               --infodir=/usr/share/info \
               --mandir=/usr/share/man   \
               --with-system-zlib        \
               --with-system-pnglib      \
               --with-system-ncurses     \
               --with-system-libwww      \
               --with-system-ncurses     \
               --without-texinfo         \
               --without-dialog          \
               --disable-multiplatform   \
               $OMIT_X11                 &&
  make  all                              &&
  prepare_install                        &&
  make    install

) > $C_FIFO 2>&1
