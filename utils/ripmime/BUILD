(

  sedit "s/^CFLAGS/\$CFLAGS=$CFLAGS #/" Makefile        &&
  sedit "s/^CFLAGS/\$CFLAGS=$CFLAGS #/" tnef/Makefile   &&
  make                                &&
  prepare_install                     &&
  strip ripmime                       &&
  install -m755 ripmime /usr/bin  

) > $C_FIFO 2>&1
