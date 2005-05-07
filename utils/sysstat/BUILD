(

  cp $SCRIPT_DIRECTORY/CONFIG build/CONFIG &&
  sedit "s/doc\/sysstat-\$(VERSION)/share\/doc\/sysstat/g" Makefile &&
  default_make

) > $C_FIFO 2>&1
