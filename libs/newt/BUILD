(

  ./configure  --prefix=/usr             \
               --mandir=/usr/share/man  && 
  default_make                          &&
  mkdir -p $DOCUMENT_DIRECTORY/newt     &&
  cp newt.spec $DOCUMENT_DIRECTORY/newt
  
) > $C_FIFO 2>&1
