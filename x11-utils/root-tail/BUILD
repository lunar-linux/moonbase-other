(
  patch_it $SOURCE2 0 &&
  patch_it $SOURCE3 1 &&

  /usr/X11/bin/xmkmf -a &&
  default_make

) > $C_FIFO 2>&1
