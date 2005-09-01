(

  sedit "s/fix)\/man/fix)\/share\/man/" Makefile.cfg           &&
  sedit "s/zbl %%al,%%ax/zbl %%al,%%eax/" gl/inlstring.h       &&
  # gcc-3.3.x fix
  # gcc-3.4.x fixes
  patch_it $SOURCE_CACHE/$SOURCE2 0                            &&

  make prefix=/usr shared static utils                         &&
  prepare_install                                              &&
  make prefix=/usr install

) > $C_FIFO 2>&1
