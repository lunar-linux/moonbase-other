(

  export CFLAGS="$CFLAGS -fPIC"

  sedit "s/CCFLAGS = -O2 -W/CCFLAGS = $CFLAGS/" Makefile
  sedit "s/CFLAGS = -O -Wall -ansi -pedantic/CCFLAGS = $CFLAGS/" libjbig/Makefile
  sedit "s/CFLAGS = -g -Wall -ansi -pedantic -I..\/libjbig/CCFLAGS = $CFLAGS -I..\/libjbig/" pbmtools/Makefile

  make       &&
  make test  &&

  prepare_install  &&

  install -m0755 libjbig/libjbig.a /usr/lib       &&
  install -m0644 libjbig/jbig.h    /usr/include   &&
  install -m0644 libjbig/jbig_ar.h /usr/include   &&
  install -m0755 libjbig/tstcodec  /usr/bin       &&
  install -m0755 pbmtools/jbgtopbm /usr/bin       &&
  install -m0755 pbmtools/pbmtojbg /usr/bin       &&
  install -m0644 pbmtools/*.5      /usr/man/man5  &&

  gather_docs libjbig/jbig.doc pbmtools/*.txt

) > $C_FIFO 2>&1
