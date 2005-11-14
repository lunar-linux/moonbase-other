(
  
  sedit "s:(LOADKEYS_BINDIR):(BINDIR):" src/Makefile.in  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  ./configure  &&
	       
  default_make 

) > $C_FIFO 2>&1
