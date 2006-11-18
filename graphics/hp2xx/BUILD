(

  cp $SCRIPT_DIRECTORY/generic.mak sources/makefile  &&
  cd sources  &&
  make all &&

  prepare_install &&

  make install

) > $C_FIFO 2>&1
