(

  sedit "s:(prefix)/html:(prefix)/share/doc/$MODULE/html:g" */Makefile.in Makefile.in &&
  sedit "s:(prefix)/examples:(prefix)/share/doc/$MODULE/examples:g" */Makefile.in Makefile.in &&
  sedit "s:(prefix)/contrib:(prefix)/share/doc/$MODULE/contrib:g" */Makefile.in Makefile.in */*/Makefile.in &&
  sedit "s:(prefix)/doc:(prefix)/share/doc/$MODULE/doc:g" */Makefile.in Makefile.in &&
  OPTS="$OPTS --enable-local-libpng --enable-local-zlib --enable-static --enable-shared"
  default_build &&

  make site-perl-install

) > $C_FIFO 2>&1
