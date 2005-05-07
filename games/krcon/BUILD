(
  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3
  QTDIR=${QT_PREFIX:-$QTDIR}
  KDEDIR=${KDE_PREFIX:-$KDEDIR}

  ./configure    --prefix=${KDE_PREFIX:-$KDEDIR}            \
                 --disable-debug                      \
                 --with-qt-dir=${QT_PREFIX:-$QTDIR}        \
                 --with-xinerama                      \
                 $OPTS                                &&

  make                 &&
  prepare_install      &&
  make install         
 
) > $C_FIFO 2>&1
