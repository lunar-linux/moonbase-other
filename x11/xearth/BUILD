(
  patch_it $SOURCE_CACHE/$SOURCE2 1                       &&
  cp Makefile.DIST Makefile                               &&
  xmkmf                                                   &&
  make all                                                &&
  prepare_install                                         &&
  cp xearth  /usr/X11R6/bin                               &&
  cp xearth.man /usr/share/man/man1/xearth.1              &&
  echo " Installation complete."

) > $C_FIFO 2>&1
