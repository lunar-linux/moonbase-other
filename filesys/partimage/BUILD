(

  # Fixes compilation error:
  # net.h:31:22: error: iostream.h: No such file or directory
  sedit "s:iostream.h:iostream:" src/shared/net.h src/server/partimaged.cpp src/server/partimaged-main.cpp  &&

  # Fixes compilation error:
  # misc.cpp:2375: error: invalid conversion from 'const char*' to 'char*'
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  default_config  &&

  sedit '/partimag\.root/d' Makefile.{in,am}   &&
  sedit "s|partimag:root|disk:root|g" Makefile &&

  default_make

) > $C_FIFO 2>&1
