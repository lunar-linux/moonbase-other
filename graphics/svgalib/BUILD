(
  # gcc-3.4.x  & gcc4.1.x fixes
  patch_it $SOURCE_CACHE/$SOURCE2 1     &&

  # fixes a utils/gtf/gtfcalc.c issue
  patch_it $SOURCE_CACHE/$SOURCE3 0     &&

  make prefix=/usr shared static utils  &&
  prepare_install                       &&
  make prefix=/usr install

) > $C_FIFO 2>&1
