(

  ./configure --prefix=/usr/bin &&
  ./install.tcl &&

  sedit "s:cdrecord:wodim:g" tkdvd-install.sh &&
  sedit "s:mkisofs:genisoimage:g" tkdvd-install.sh &&

  prepare_install &&

  install -m 755 tkdvd-install.sh /usr/bin/tkdvd &&
  install -m 755 -d /usr/share/pixmaps/ &&
  install -m 644 icons/*.png /usr/share/pixmaps/

) > $C_FIFO 2>&1
