(
  cd unrar &&
  cp makefile.gcc Makefile &&
  sedit  "s/typedef __wchar_t/typedef wchar_t/" rartypes.hpp
  sedit  "s/-O2/$CFLAGS/"  Makefile  &&
  make             &&
  prepare_install  &&
  cp unrar /usr/bin &&
  mkdir -p $DOCUMENT_DIRECTORY/unrar &&
  cp readme.txt license.txt $DOCUMENT_DIRECTORY/unrar

) >$C_FIFO 2>&1
