(
  # complains of a "invalid host type"
  # if they are set
  unset CFLAGS CXXFLAGS

  ./configure      &&
  make             &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
