(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  sedit "s/DOLFS = false/DOLFS = true/" Makefile
  sedit "s/DOSTATIC = false/DOSTATIC = true/" Makefile

  make             &&
  prepare_install  &&
  cp      busybox  /sbin/busybox_static


) > $C_FIFO 2>&1
