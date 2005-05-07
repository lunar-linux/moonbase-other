(
  
  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${KDE_PREFIX:-$KDEDIR}/bin:${QT_PREFIX:-$QTDIR}/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3

  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}      \
               --disable-debug                \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               $OPTS                          &&

  default_make

) > $C_FIFO 2>&1
