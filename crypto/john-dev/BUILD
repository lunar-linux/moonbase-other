(

  cd   src

  sedit  "s/-c -Wall -O2 -fomit-frame-pointer/-c -Wall $CFLAGS/"  Makefile
  sedit  "s/ -m486//"  Makefile

  make  generic  &&
  prepare_install

) > $C_FIFO 2>&1  &&  (

  cd  run
  cp  -d  john  mailer  unshadow  unique  unafs  /usr/sbin

  mkdir  -p                /usr/share/john-dev
  cp  *.conf  *.lst        /usr/share/john-dev

)
