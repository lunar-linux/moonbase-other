(

  export CXXFLAGS+=" -fPIC" &&
  cd unrar &&
  cp makefile.unix Makefile &&
  sedit '/^CXXFLAGS/d' Makefile &&
  make clean &&
  make sfx &&
  make clean &&
  make unrar lib &&
  prepare_install &&
  make install-unrar &&
  make install-lib &&
  install default.sfx /usr/lib/ &&

  # Needed because gather_docs is confused by PRE_BUILD
  mkdir -p $DOCUMENT_DIRECTORY/unrar &&
  cp readme.txt license.txt $DOCUMENT_DIRECTORY/unrar

) >$C_FIFO 2>&1
