(
  patch_it $SOURCE2 0 &&
  patch_it $SOURCE3 1 &&

  /usr/X11/bin/xmkmf -a &&
  default_make &&
  install -m644 root-tail.man /usr/share/man/man1/root-tail.1

) > $C_FIFO 2>&1
