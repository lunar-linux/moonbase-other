(

  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:$PATH

  default_make  &&
  install -m 755 esvn ${QT_PREFIX:-$QTDIR}/bin	&&
  install -m 755 esvn-diff-wrapper ${QT_PREFIX:-$QTDIR}/bin

) > $C_FIFO 2>&1
