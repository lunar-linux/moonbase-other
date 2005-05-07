(
  sedit "s/MAN_DIR   = \$(PREFIX)\/man\//MAN_DIR   = \$(PREFIX)\/share\/man\//" iv/Makefile.install.UNIX

  # On next update please test without this line, this fixes the build.
  sedit "s/extern bool isblank(int c);/#include <ctype.h>/" include/xsw_ctype.h &&

  cd iv             &&
  make              &&
  prepare_install   &&
  make install 

) > $C_FIFO 2>&1
