(

  patch  -p1  <  $SCRIPT_DIRECTORY/nc.patch
  sedit  "s/CFLAGS = -O/CFLAGS = $CFLAGS/"    Makefile
  make linux          &&
  prepare_install     &&
  cp nc /usr/bin/nc

) > $C_FIFO 2>&1
