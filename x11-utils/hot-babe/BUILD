(
   cp Makefile Makefile.orig  &&
	sedit "s/\/local//" Makefile &&
   NEWFLAGS=$CFLAGS
   sedit "s/cflags\`/cflags\` $NEWFLAGS/" Makefile &&
	make && 
	prepare_install &&
	make install
) > $C_FIFO 2>&1
