(

  chmod 755 configure &&
  sedit "s/#include <cstring>/#include <cstring>\n#include <stdio.h>/" source/Compiler.cpp &&

  OPTS+=" --disable-static" &&

  default_build

) > $C_FIFO 2>&1
