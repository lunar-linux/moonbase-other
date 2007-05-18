(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  make  CC="gcc -I. $CFLAGS"  &&
  prepare_install             &&
  make    install             &&
  mkdir -p $DOCUMENT_DIRECTORY/fbset/etc &&
  cp etc/fb* $DOCUMENT_DIRECTORY/fbset/etc

) > $C_FIFO 2>&1
