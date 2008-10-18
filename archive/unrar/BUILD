(

  cd unrar &&
  cp makefile.unix Makefile &&
  make &&
  prepare_install &&
  make install-unrar &&
  mkdir -p $DOCUMENT_DIRECTORY/unrar &&
  cp readme.txt license.txt $DOCUMENT_DIRECTORY/unrar

) >$C_FIFO 2>&1
