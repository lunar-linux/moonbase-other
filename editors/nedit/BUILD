(

  cd   makefiles                                         &&
  cp   Makefile.linux  Makefile.linux.orig               &&
  sed  "s/CFLAGS\=/CFLAGS:=/"  Makefile.linux.orig       |
  sed  "s/-DUSE_LPR_PRINT_CMD/& \$\(CFLAGS\)/"  >        \
       Makefile.linux
  cd   ..                                                &&
  sedit "s/-lm/-lm -lXmu/" makefiles/Makefile.linux      &&
  make  linux                                            &&
  prepare_install

) > $C_FIFO 2>&1  &&  (

  strip      source/nedit                           &&
  strip      source/nc                              &&
  cp         source/nc         /usr/bin             &&
  cp         source/nedit      /usr/bin             &&
  cp         doc/nc.man        nc.1                 &&
  cp         doc/nedit.man     nedit.1              &&
  gzip  -9   nc.1                                   &&
  gzip  -9   nedit.1                                &&
  cp         nc.1.gz           /usr/share/man/man1  &&
  cp         nedit.1.gz        /usr/share/man/man1

)
