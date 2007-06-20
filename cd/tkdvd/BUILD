(

  ./configure --prefix=/usr/bin  &&
  ./install.tcl  &&

  prepare_install  &&

  install -m 755 tkdvd-install.sh /usr/bin/tkdvd  &&
  install -m 644 icons/*.png /usr/share/pixmaps

) > $C_FIFO 2>&1
