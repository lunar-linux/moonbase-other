(

  ./configure  --prefix=/usr                         \
               --mandir=/usr/share/man               && 
  make                                               &&
  prepare_install                                    &&
  make    install                                    &&
  mkdir -p $DOCUMENT_DIRECTORY/newt                  &&
  cp newt.spec $DOCUMENT_DIRECTORY/newt
  
) > $C_FIFO 2>&1
