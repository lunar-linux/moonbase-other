(

  sedit "s:(LOADKEYS_BINDIR):(BINDIR):" src/Makefile.in  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  patch_it $SOURCE_CACHE/$SOURCE3 1  &&

  ./configure --datadir=/usr/share $OPTS  &&

  default_make 

) > $C_FIFO 2>&1
