(

  sedit "s:tail -1:tail -n 1:" Makefile  &&
  KERNEL_PATH=/usr/src/linux make        &&
  prepare_install                        &&
  KERNEL_PATH=/usr/src/linux make install

) > $C_FIFO 2>&1
