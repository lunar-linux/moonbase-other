(

  patch_it  $SOURCE_CACHE/$SOURCE2 0     &&
  sedit "s/SeDcFlAgS/$CFLAGS/g" Makefile &&
  default_make

) > $C_FIFO 2>&1
