(
  
  patch_it $SCRIPT_DIRECTORY/nethogs-0.6.0-gcc34.diff 0  &&
  sedit "s:CFLAGS=-O2:CFLAGS=$CFLAGS:" Makefile  &&
  default_make
 
) > $C_FIFO 2>&1
