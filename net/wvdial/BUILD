(
  unset CC CXX                                         &&
  sedit 's/\/usr\/local/\/usr/g' Makefile              &&
  make                                                 &&
  prepare_install                                      &&
  make    install

) > $C_FIFO 2>&1

