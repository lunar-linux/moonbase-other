(

  sedit "s/^CFLAGS/\$CFLAGS=$CFLAGS #/" Makefile        &&
  make                                &&
  prepare_install                     &&
  strip altermime                     &&
  install -m755 altermime /usr/bin  

) > $C_FIFO 2>&1
