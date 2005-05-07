(

  # 2.6 kernel support
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  sedit "s:-I/usr/src/linux -I/usr/src/linux/include::" Makefile.in &&
  default_build &&

  gather_docs PROBLEMS PORTING

) > $C_FIFO 2>&1
