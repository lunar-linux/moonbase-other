(

  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:$PATH

  # bugfix for esvn-0.6.11-1
  sedit "3009,3011d" .ui/frm_main.ui &&
  default_make  &&
  install -m 755 esvn ${QT_PREFIX:-$QTDIR}/bin	&&
  install -m 755 esvn-diff-wrapper ${QT_PREFIX:-$QTDIR}/bin

) > $C_FIFO 2>&1
