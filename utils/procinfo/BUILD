(

  sedit "s/\/man\/man/\/share\/man\/man/g" Makefile

  sed   "s/-ltermcap/-lncurses/" Makefile  |
  make  -f  -                              &&
  prepare_install                          &&
  make  -e  PREFIX=/usr install

) > $C_FIFO 2>&1
