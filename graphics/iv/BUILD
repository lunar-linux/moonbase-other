(
  sedit "s/MAN_DIR   = \$(PREFIX)\/man\//MAN_DIR   = \$(PREFIX)\/share\/man\//" iv/Makefile.install.UNIX
  cd iv             &&
  make              &&
  prepare_install   &&
  make install 

) > $C_FIFO 2>&1
