(
  cp makefile.gcc Makefile &&
  sedit  "s/-O2/$CFLAGS/"  Makefile  &&
  make             &&
  prepare_install  &&
  cp unrar /usr/bin &&
  mkdir -p $DOCUMENT_DIRECTORY/unrar &&
  cp readme.txt license.txt $DOCUMENT_DIRECTORY/unrar

) >$C_FIFO 2>&1
