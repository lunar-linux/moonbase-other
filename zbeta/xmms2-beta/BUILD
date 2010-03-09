(

  ./waf configure --prefix=/usr --without-optionals=et &&
  ./waf build &&
  prepare_install &&
  ./waf install

) > $C_FIFO 2>&1
