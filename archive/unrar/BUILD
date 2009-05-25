(
  export CXXFLAGS+=" -fPIC"
  cd unrar &&
  cp makefile.unix Makefile &&
  make clean &&
  make sfx &&
  make clean &&
  make unrar lib &&
  prepare_install &&
  make install-unrar &&
  make install-lib &&
  install default.sfx /usr/bin &&
  mkdir -p $DOCUMENT_DIRECTORY/unrar &&
  cp readme.txt license.txt $DOCUMENT_DIRECTORY/unrar

) >$C_FIFO 2>&1
