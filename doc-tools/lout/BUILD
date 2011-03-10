(

  sedit 's:mkdir \$:mkdir -p \$:g' makefile &&

  opts="PREFIX=/usr BINDIR=/usr/bin LOUTLIBDIR=/usr/share/lout LOUTDOCDIR=/usr/share/doc/lout MANDIR=/usr/share/man/man1" &&
  make ${opts} PDF_COMPRESSION=1 ZLIB=-lz all &&
  prepare_install &&
  mkdir -p /usr/share/doc/lout &&
  make -j1 ${opts} allinstall &&

  # Create docs - they are too complex for PDF output
  cd doc/user  && lout -r6 all -o /usr/share/doc/lout/user.ps   &&
  cd ../design && lout -r3 all -o /usr/share/doc/lout/design.ps &&
  cd ../expert && lout -r4 all -o /usr/share/doc/lout/expert.ps &&
  cd ../slides && lout -r2 all -o /usr/share/doc/lout/slides.ps &&
  # Don't install docs twice
  rm -r $SOURCE_DIRECTORY/doc &&
  echo "Finished creating lout docs."

) > $C_FIFO 2>&1
