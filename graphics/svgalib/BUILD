(

  sedit "s/fix)\/man/fix)\/share\/man/" Makefile.cfg           &&
  sedit "s/zbl %%al,%%ax/zbl %%al,%%eax/" gl/inlstring.h       &&
  # gcc-3.3.x fix
  sedit "s/mmt.##x/mmt.x/" src/vga.c                           &&

  make prefix=/usr shared static utils                         &&
  prepare_install                                              &&
  make prefix=/usr install

) > $C_FIFO 2>&1
