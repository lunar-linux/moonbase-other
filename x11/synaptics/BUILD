(
  patch_it $SOURCE2 1

  sedit 's/\/usr\/local/\/usr/' Makefile &&
  
  default_make

) > $C_FIFO 2>&1
