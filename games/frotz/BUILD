(

  sedit "s:/usr/local:/usr:g" Makefile			&&
  sedit "s:^OPTS.*:OPTS=$CFLAGS:" Makefile		&&
  sedit "s:^CONFIG_DIR.*:CONFIG_DIR=/etc:" Makefile	&&

  default_make						&&
  gather_docs HOW_TO_PLAY frotz.lsm DUMB

) > $C_FIFO 2>&1
