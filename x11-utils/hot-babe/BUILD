(

   cp Makefile Makefile.orig    &&
   sedit "s/\/local//" Makefile &&

   NEWFLAGS=$CFLAGS
   sedit "s/cflags\`/cflags\` $NEWFLAGS/" Makefile &&

   default_make  &&
   install hot-babe.1 /usr/share/man/man1

) > $C_FIFO 2>&1
