(

  make all                                     &&
  prepare_install                              &&
  mkdir -p /usr/share/dict                     &&
  make install                                 &&
  cp cracklib/libcrack.so /lib                 &&
  ln -sf /lib/libcrack.so /usr/lib/libcrack.so &&
  cp $SCRIPT_DIRECTORY/crack.h /usr/include

) > $C_FIFO 2>&1
