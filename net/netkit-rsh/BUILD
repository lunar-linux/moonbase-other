(

  sedit "s/MANDIR=\"\$PREFIX\/man/MANDIR=\"\$PREFIX\/share\/man/" configure
  ./configure  --prefix=/usr  &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1
