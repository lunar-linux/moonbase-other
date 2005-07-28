(

  # we belong in /usr/bin not /usr/local/bin
  sedit "s:PREFIX=/usr/local:PREFIX=/usr:" Makefile &&
  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  default_make

) > $C_FIFO 2>&1
