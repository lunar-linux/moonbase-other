(
  cat $SCRIPT_DIRECTORY/libwvstreams-3.70-gcc3.patch | patch -p1 &&
  sed 's/\/usr\/local/\/usr/g' < Makefile > Makefile~ &&
  mv Makefile~ Makefile                               &&
  sed 's/\/usr\/local/\/usr/g' < Doxyfile > Doxyfile~ &&
  mv Doxyfile~ Doxyfile                               &&
  make                                                &&
  prepare_install                                     &&
  make    install

) > $C_FIFO 2>&1

