(

  ./configure  --prefix=/usr                           \
               --with-qt-prefix=${QT_PREFIX:-$QTDIR}  &&
  default_make &&
  ln -sf /usr/include/avifile-$LVERSION /usr/include/avifile

) > $C_FIFO 2>&1
