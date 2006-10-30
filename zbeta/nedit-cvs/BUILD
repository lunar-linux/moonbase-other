(

  sedit "s/CFLAGS=/CFLAGS:=-DBUILD_UNTESTED_NEDIT /"  makefiles/Makefile.linux &&
  sedit "s/-DUSE_LPR_PRINT_CMD/& \$\(CFLAGS\)/" makefiles/Makefile.linux &&
  sedit "s/-lm/-lm -lXmu/" makefiles/Makefile.linux &&
  make  linux docs &&
  prepare_install &&

  install -s source/nc /usr/bin/nc-cvs                    &&
  install -s source/nedit /usr/bin/nedit-cvs              &&
  install doc/nc.man nc-cvs.1                             &&
  install doc/nedit.man nedit-cvs.1                       &&
  gzip -9 nc-cvs.1 nedit-cvs.1                            &&
  install nc-cvs.1.gz nedit-cvs.1.gz /usr/share/man/man1/ &&
  gather_docs ReleaseNotes doc/nedit.doc doc/nedit.html doc/README.FAQ doc/html/*

) > $C_FIFO 2>&1
