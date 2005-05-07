(

  make $MODULE CFLAGS="$CFLAGS" &&
  
  prepare_install                 &&
  install -m0755 x86info /usr/bin &&
  install -m0644 x86info.1 /usr/man/man1

) > $C_FIFO 2>&1
