(

  patch_it $SOURCE_CACHE/$SOURCE2 1
  sedit "s/-O2 -fomit-frame-pointer/$CFLAGS/" Makefile

  MAKE_OPTS="PREFIX=/usr  MANDIR=/usr/man/man8"

  make  $MAKE_OPTS  &&
  prepare_install   &&
  make  $MAKE_OPTS  install

) > $C_FIFO 2>&1
