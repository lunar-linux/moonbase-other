(

  sedit "s/-O2 -fomit-frame-pointer/ /" Makefile &&

  MAKE_OPTS="PREFIX=/usr MANDIR=/usr/man/man8"   &&

  make  $MAKE_OPTS  &&
  prepare_install   &&
  make  $MAKE_OPTS  install

) > $C_FIFO 2>&1
