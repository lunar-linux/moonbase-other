(

  sedit "s:^/:#include \<errno.h\> /:" src/config.h &&
  sedit "s:/usr/local:${MODULE_PREFIX}:g" src/Makefile &&
  make -C src linux &&
  prepare_install &&
  install -m 755 src/grok ${MODULE_PREFIX}/bin/ &&
  install -m 644 man/grok.1 ${MODULE_PREFIX}/share/man/man1/ &&
  cp -av misc ${MODULE_PREFIX}/share/$MODULE &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE/demo &&
  cp -av demo $DOCUMENT_DIRECTORY/$MODULE/demo

) > $C_FIFO 2>&1
