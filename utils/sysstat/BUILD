(

  cp $SCRIPT_DIRECTORY/CONFIG build/CONFIG &&
  sedit "s/doc\/sysstat-\$(VERSION)/share\/doc\/sysstat/g" Makefile &&
  make &&
  prepare_install &&
  make install

) > $C_FIFO 2>&1
