(

  sedit "s/\/man\/man1/\/share\0/" manedit/Makefile.install.UNIX
  ./configure  Linux                   \
               --prefix=/usr           \
               --mandir=/usr/share/man \
               --CFLAGS="$CFLAGS"      \
               $OPTS                   &&
  make                                 &&
  prepare_install                      &&
  make    install

) > $C_FIFO 2>&1
