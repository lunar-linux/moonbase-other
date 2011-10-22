(

  cd $SOURCE_DIRECTORY                   &&
  sedit "s/-O2/$CFLAGS/" Makefile        &&
  sedit "s/44100/48000/g" bass-xmms.c    &&
  make clean                             &&
  make                                   &&
  prepare_install                        &&
  make install

) > $C_FIFO 2>&1
