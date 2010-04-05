(
  cd $SOURCE_DIRECTORY &&

  # gcc-4.4 is stricter on indirect includes,
  # so add stdio.h otherwise EOF is undefined
  sedit '/#include <stdlib.h>/a#include <stdio.h>' ddd/strclass.C &&

  default_build

) > $C_FIFO 2>&1
