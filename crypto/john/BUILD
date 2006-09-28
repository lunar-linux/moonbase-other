(

  cd src

  sedit "s/-c -Wall -O2 -fomit-frame-pointer/-c -Wall $CFLAGS/" Makefile
  sedit "s/ -m486//"  Makefile

  make generic &&
  prepare_install

  cd  ../run
  cp  -d  john  mailer  unshadow  unique  unafs  /usr/sbin

  mkdir  -p                 /usr/share/john
  cp  *.chr  *.lst  *.conf  /usr/share/john

) > $C_FIFO 2>&1
