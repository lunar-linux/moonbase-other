(

  sedit "s/mandir = \$(prefix)\/man/mandir = \$(prefix)\/share\/man/" Makefile.in
  ./configure  --build=$BUILD  \
               --prefix=/usr   \
               $OPTS           &&
  make                         &&
  prepare_install              &&
  make    install              &&
  ln  -sf  flex  /usr/bin/lex

) > $C_FIFO 2>&1
