(

  sedit "s/CFLAGS = -O3/#\$0/" Makefile
  make clean        &&
  make              &&
  prepare_install   &&
  cp unace /usr/bin 

) > $C_FIFO 2>&1
