(

  sedit "/^MAN_DIR/s/.*/MAN_DIR=\/usr\/share\/man/" Makefile                &&
  sedit "/  manpath/d"                              Makefile                &&
  sedit "s/lilo\.8/lilo\.8\.gz/"                    Makefile                &&
  sedit "s/mkrescue\.8/mkrescue\.8\.gz/"            Makefile                &&
  sedit "s/lilo\.conf\.5/lilo\.conf\.5\.gz/"        Makefile                &&  
  cd manPages
  gzip -9 *
  cd ..
  make  ROOT=      &&
  prepare_install  &&
  make  ROOT= install
  

) > $C_FIFO 2>&1
