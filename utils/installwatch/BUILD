(

  sedit  "s:PREFIX=/usr/local:PREFIX=/usr:"  Makefile
  sedit  "s/gcc /gcc $CFLAGS /"              Makefile
  make             &&
  prepare_install  &&
  make    install

) > $C_FIFO 2>&1
