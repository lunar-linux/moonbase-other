(
  cat $SCRIPT_DIRECTORY/libwvstreams-3.70-gcc3.patch | patch -p1 &&
  sedit 's/\/usr\/local/\/usr/g' Makefile             &&
  sedit 's/\/usr\/local/\/usr/g' Doxyfile             &&
  make                                                &&
  prepare_install                                     &&
  make    install

) > $C_FIFO 2>&1

