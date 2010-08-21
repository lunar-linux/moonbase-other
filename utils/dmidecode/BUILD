(
  # make 3.82 fix
  sedit '/PROGRAMS !=/d' Makefile &&
  sedit 's:/usr/local:/usr:g' Makefile &&
  default_make

) > $C_FIFO 2>&1
