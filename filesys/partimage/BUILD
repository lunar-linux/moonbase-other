(

  patch_it $SOURCE2 0 &&

  # Fixes compilation error:
  # net.h:31:22: error: iostream.h: No such file or directory
  sedit "s:iostream.h:iostream:" src/shared/net.h src/server/partimaged.cpp src/server/partimaged-main.cpp  &&

  default_config  &&

  sedit '/partimag\.root/d' Makefile.{in,am}    &&
  sedit "s|partimag:root|disk:root|g" Makefile  &&

  default_make

) > $C_FIFO 2>&1
