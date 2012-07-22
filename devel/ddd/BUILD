(
  # gcc-4.4 is stricter on indirect includes,
  # so add stdio.h otherwise EOF is undefined
  sedit '/#include <stdlib.h>/a#include <stdio.h>' ddd/strclass.C &&

  # do not fail if GZIP variable is set
  unset GZIP &&

  default_build &&
  install -m644 icons/ddd.xpm /usr/share/pixmaps

) > $C_FIFO 2>&1
