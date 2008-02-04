(

  cd $SOURCE_DIRECTORY                   &&
  patch_it $SOURCE3 0                    &&
  sedit "s/-O2/$CFLAGS/" Makefile        &&
  sedit "s/44100/48000/g" bassmod-xmms.c &&
  make clean                             &&
  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1
