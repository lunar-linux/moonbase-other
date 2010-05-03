(

  sedit "s:../lib/zlib:/usr/lib:"  src/scripts/gcc.mak.in src/scripts/gcc.mak  &&
  cd $SOURCE_DIRECTORY/src  &&
  make -f scripts/gcc.mak   &&
  prepare_install           &&
  make -f scripts/gcc.mak prefix=/usr install

) > $C_FIFO 2>&1
