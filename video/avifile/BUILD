(

  export AVI_VERSION=`lvu version avifile | cut -d. -f1,2`
  
  ./configure  --prefix=/usr                           \
               --with-qt-prefix=${QT_PREFIX:-$QTDIR}  &&

  default_make &&
  
  ln -sf /usr/include/avifile-$AVI_VERSION /usr/include/avifile

) > $C_FIFO 2>&1
