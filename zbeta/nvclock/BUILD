(

  OPTS+=" --disable-qt --bindir=/usr/bin" &&

  autoreconf -fi &&
  default_build &&

  # Show the icon on the desktop menu
  install -m644 nvclock.png /usr/share/icons/

) > $C_FIFO 2>&1
