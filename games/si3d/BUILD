(

  sedit  "s/-mcpu=pentium -march=pentium/$CFLAGS/"  Makefile
  make                           &&
  prepare_install                &&
  make    INSTBINDIR=/usr/games  \
          install

) > $C_FIFO 2>&1

