(
  bad_flags linker &&
  patch_it  $SOURCE_CACHE/$SOURCE2 0 &&
  xmkmf -a                  &&
  for FILE in `ls */Makefile`; do
    sedit "s:EXTENSIONLIB =  -lXext:EXTENSIONLIB = -L/usr/X11R6/lib  -lXext:" $FILE
  done                      &&
  default_make &&
  make install.man &&
  mkdir -p $DOCUMENT_DIRECTORY/$MODULE/demos &&
  cp -a demos $DOCUMENT_DIRECTORY/$MODULE &&
  rm $DOCUMENT_DIRECTORY/$MODULE/demos/*.o &&
  cp 00README $DOCUMENT_DIRECTORY/$MODULE

) > $C_FIFO 2>&1
