(

  sedit "s/fix)\/man/fix)\/share\/man/" Makefile.cfg           &&
  # gcc-3.3.x fix
  sedit "s/mmt.##x/mmt.x/" src/vga.c                           &&
  default_make

) > $C_FIFO 2>&1
