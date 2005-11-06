(

  patch -p1 < $SCRIPT_DIRECTORY/nc.patch
  sedit "s/CFLAGS = -O/CFLAGS = $CFLAGS/" Makefile
  make linux         &&
  prepare_install    &&
  cp nc /usr/bin/nc  &&
  mkdir -p $DOCUMENT_DIRECTORY/nc/scripts  &&
  cp -a scripts $DOCUMENT_DIRECTORY/nc/

) > $C_FIFO 2>&1
