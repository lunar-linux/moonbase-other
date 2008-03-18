(

  sedit "s/CFLAGS=/CFLAGS:=-DBUILD_UNTESTED_NEDIT /"  makefiles/Makefile.linux &&
  sedit "s/-DUSE_LPR_PRINT_CMD/& \$\(CFLAGS\)/" makefiles/Makefile.linux &&
  sedit "s/-lm/-lm -lXft -lXmu -lpng -ljpeg/" makefiles/Makefile.linux &&
  make  linux &&
  prepare_install &&

  install -s source/nc source/nedit /usr/bin/     &&
  install doc/nc.man        nc.1                  &&
  install doc/nedit.man     nedit.1               &&
  gzip -9 nc.1 nedit.1                            &&
  install nc.1.gz nedit.1.gz /usr/share/man/man1/ &&
  gather_docs ReleaseNotes doc/nedit.doc doc/nedit.html doc/README.FAQ doc/html/*

) > $C_FIFO 2>&1
