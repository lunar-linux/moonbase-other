(

  patch_it $SOURCE2 0 &&
  sedit "s/CFLAGS = -O/CFLAGS = $CFLAGS/" Makefile &&
  make linux          &&
  prepare_install     &&
  install -m755 nc /usr/bin/  &&
  
  gather_docs scripts

) > $C_FIFO 2>&1
