(

  ./configure --prefix=/usr $OPTS &&
  default_make &&
  mkdir -p $DOCUMENT_DIRECTORY/qemu &&
  cp qemu-doc.html TODO $DOCUMENT_DIRECTORY/qemu/
  
) > $C_FIFO 2>&1
