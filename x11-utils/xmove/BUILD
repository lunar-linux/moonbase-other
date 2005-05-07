(
  # Build psuedo-server
  cd $SOURCE_DIRECTORY/xmove &&
  xmkmf 
  make 

  # Build control app
  cd ../xmovectrl &&
  xmkmf
  make

  prepare_install &&
  cd $SOURCE_DIRECTORY &&
  install -m 755 xmove/xmove /usr/bin &&
  install -m 755 xmovectrl/xmovectrl /usr/bin &&
  install man/man1/xmove.1 /usr/share/man/man1 &&
  install man/man1/xmovectrl.1 /usr/share/man/man1
) > $C_FIFO
