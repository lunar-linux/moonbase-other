(

  sedit "s/\infodir = \$(prefix)\/info/infodir = \$(prefix)\/share\/info/" Makefile.in
  ./configure  --build=$BUILD             \
               --prefix=/usr              \
               $OPTS                      &&

  sedit "s/fix)\/info/fix)\/share\/info/" Makefile  &&
  
  make                                    &&
  prepare_install                         &&
  make    install

) > $C_FIFO 2>&1
