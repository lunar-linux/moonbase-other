(

  sedit "s/fix)\/man/fix)\/share\/man/" Makefile.cfg           &&
  # gcc-3.3.x fix
  sedit "s/mmt.##x/mmt.x/" src/vga.c                           &&
  make prefix=/usr                                             &&
  prepare_install                                              &&
  make prefix=/usr install

) > $C_FIFO 2>&1
