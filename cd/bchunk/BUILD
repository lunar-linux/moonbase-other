(

  make  &&
  prepare_install  &&
  install -m 755 -s -o root -g root bchunk /usr/bin  &&
  install -m 644 -o bin -g bin bchunk.1 /usr/share/man/man1

) > $C_FIFO 2>&1
