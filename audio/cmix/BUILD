(

  gcc ${CFLAGS} mix.c -o cmix &&
  strip cmix &&
  prepare_install &&
  install -o root -g root -m 755 cmix /usr/bin 

) > $C_FIFO 2>&1
