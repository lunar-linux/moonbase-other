(

  patch -p1 < $SCRIPT_DIRECTORY/flags.patch   &&
  xmkmf -a                  &&
  patch -p1 < $SCRIPT_DIRECTORY/libs.patch    &&
  make                      &&
  make install

) > $C_FIFO 2>&1
