(

  sedit "s/mandir = \$(prefix)\/man/mandir = \$(prefix)\/share\/man/" Makefile.in
  sedit "s/\$(prefix)\/info/\$(prefix)\/share\/info/" Makefile.in
  ./configure  --build=$BUILD          \
               --prefix=/usr           \
               $OPTS                   &&
  make                                 &&
  prepare_install                      &&
  make    install

) > $C_FIFO 2>&1
