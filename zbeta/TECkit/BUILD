(

  chmod 755 configure  &&
  sedit "s/#include <cstring>/#include <cstring>\n#include <stdio.h>/" source/Compiler.cpp &&
  default_build

) > $C_FIFO 2>&1
