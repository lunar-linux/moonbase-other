(

  ./configure --prefix=/usr &&
  prepare_install &&
  install -m755 -o root -g root dsh /usr/bin &&
  install -m644 -o root -g root dsh.1 /usr/share/man/man1

) > $C_FIFO 2>&1
