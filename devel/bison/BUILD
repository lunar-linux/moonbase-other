(

  patch_it  $SOURCE_CACHE/$SOURCE2 1

  ./configure  --build=$BUILD              \
               --prefix=/usr               \
               --infodir=/usr/share/info   \
               --mandir=/usr/share/man     \
               --datadir=/usr/share/bison  &&
  make                                     &&
  prepare_install                          &&
  make    install                          &&
  cp  $SCRIPT_DIRECTORY/yacc  /usr/bin

) > $C_FIFO 2>&1
