(

  # all our work is in here
  cd src/  &&

  # need to be run twice, it's a silly build system
  make -f Makefile.ref BUILD_OPT=1  &&
  make -f Makefile.ref BUILD_OPT=1  &&

  cd Linux_All_OPT.OBJ  &&
  prepare_install       &&

  # install the lib and binaries
  install libjs.a /usr/lib             &&
  install libjs.so /usr/lib            &&
  install -m0755 js jscpucfg /usr/bin  &&

  # install the development headers
  mkdir -p /usr/include/$MODULE     &&
  install *.h /usr/include/$MODULE  &&
  cd ..                             &&
  install *.h /usr/include/$MODULE

) > $C_FIFO 2>&1
