(

  cat $SCRIPT_DIRECTORY/whatis.patch | patch -p1 &&
  ./configure  -d  &&
  make             &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
