(

  # all our work is in here
  cd src/  &&

  # need to be run twice, it's a silly build system
  make -f Makefile.ref BUILD_OPT=1 JS_THREADSAFE=1 JS_DIST=/usr &&
  make -f Makefile.ref BUILD_OPT=1 JS_THREADSAFE=1 JS_DIST=/usr &&

  cd Linux_All_OPT.OBJ  &&
  prepare_install       &&

  # install the lib and binaries
  install libjs.a /usr/lib             &&
  install libjs.so /usr/lib            &&
  install -m0755 js jscpucfg /usr/bin  &&

  # install the development headers
  mkdir -p /usr/include/$MODULE            &&
  install -m0644 *.h /usr/include/$MODULE  &&
  cd ..                                    &&
  install -m0644 *.{h,tbl} /usr/include/$MODULE

) > $C_FIFO 2>&1
