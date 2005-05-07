(
  cp $SCRIPT_DIRECTORY/Makefile $SOURCE_DIRECTORY/ &&
  make                    &&
  prepare_install         &&
  make install INSTDIR=/usr/bin

) > $C_FIFO 2>&1
