(
  unset CC CXX                                         &&
  sed 's/\/usr\/local/\/usr/g' < Makefile > Makefile~  &&
  mv Makefile~ Makefile                                &&
  make                                                 &&
  prepare_install                                      &&
  make    install

) > $C_FIFO 2>&1

