(

  sedit "s/CCOPTS = -O/CCOPTS = $CFLAGS $LDFLAGS/" Makefile.std
  make   -f  Makefile.std               &&
  prepare_install                       &&
  mkdir  -p  $DOCUMENT_DIRECTORY/xv     &&
  make   -f  Makefile.std               \
         BINDIR=/usr/X11R6/bin          \
         MANDIR=/usr/X11R6/man/man1     \
         LIBDIR=$DOCUMENT_DIRECTORY/xv  \
         install

) > $C_FIFO 2>&1
