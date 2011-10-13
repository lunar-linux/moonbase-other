(


  ./configure --prefix=/usr   \
              $OPTS          &&

  cd src &&

  default_config &&

# fixes; gcc: error: unrecognized option '-R'
  sedit "s:-R/:-L/:g" cflags.h Makefile gllib/Makefile &&

  default_make

) > $C_FIFO 2>&1
