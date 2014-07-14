  export CFLAGS+=" -fPIC" &&

  # make -e is nonstandard and produces headaches when debugging problems...
  sedit "s/ -e//" Makefile &&

  # use our compile flags
  sedit "/CFLAGS =/ d" Makefile libjbig/Makefile pbmtools/Makefile &&
  sedit "s@CPPFLAGS = @CPPFLAGS += @" pbmtools/Makefile &&

  make       &&
  make test  &&

  prepare_install  &&

  install -m0755 libjbig/libjbig.a /usr/lib       &&
  install -m0644 libjbig/jbig.h    /usr/include   &&
  install -m0644 libjbig/jbig_ar.h /usr/include   &&
  install -m0755 libjbig/tstcodec  /usr/bin       &&
  install -m0755 pbmtools/jbgtopbm /usr/bin       &&
  install -m0755 pbmtools/pbmtojbg /usr/bin       &&
  install -d /usr/man/man5 &&
  install -m0644 pbmtools/*.5      /usr/man/man5  &&

  gather_docs libjbig/jbig.doc pbmtools/*.txt
