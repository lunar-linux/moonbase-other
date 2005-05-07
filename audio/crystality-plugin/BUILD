(

  patch_it  $SOURCE_CACHE/$SOURCE2 1 &&

  sedit "s/-mpentium -O6 -Wall -ffast-math -fomit-frame-pointer -finline-functions -fexpensive-optimizations/$CFLAGS/" Makefile &&
  sedit "s!/usr/local/bin!/usr/bin!" Makefile &&
  make clean                  &&
  make                        &&
  prepare_install             &&
  make    install

) > $C_FIFO 2>&1
