(

  default_config &&

  sedit "s:yes/:/:g" Makefile src/Makefile src/tests/Makefile &&

  default_make &&

  sedit "s:yes::" /usr/lib/pkgconfig/ortp.pc

) > $C_FIFO 2>&1
