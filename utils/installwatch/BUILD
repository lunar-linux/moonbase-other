(

  sedit  "s:PREFIX=/usr/local:PREFIX=/usr:"  Makefile
  sedit  "s/gcc /gcc $CFLAGS /"              Makefile
  default_make
  # since the installwatch module cannot track itself when it's
  # overwritten we need to assure it goes in the log/cache:
  touch /usr/lib/installwatch.so

) > $C_FIFO 2>&1
