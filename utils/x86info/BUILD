(

  cp     Makefile  Makefile.original
  echo  "CFLAGS = $CFLAGS"  >  Makefile
  grep  -v  "^CFLAGS"  Makefile.original  >>  Makefile

  make                                           &&
  prepare_install                                &&
  install  -m 0755 x86info    /usr/sbin/x86info  &&
  install  -m 0644 x86info.1  /usr/man/man1

) > $C_FIFO 2>&1
