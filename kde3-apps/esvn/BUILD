(

  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3

  default_make              	&&
  install -m 755 esvn /usr/bin	&&
  install -m 755 esvn-diff-wrapper /usr/bin

) > $C_FIFO 2>&1
