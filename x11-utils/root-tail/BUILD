(

  gcc $CFLAGS -o root-tail root-tail.c -L/usr/X11R6/lib -lXt &&
  prepare_install &&
  mkdir -p /usr/bin/ /usr/share/man/man1/ &&
  install -m755 root-tail /usr/bin/ &&
  install -m644 root-tail.man /usr/share/man/man1/root-tail.1

) > $C_FIFO 2>&1
