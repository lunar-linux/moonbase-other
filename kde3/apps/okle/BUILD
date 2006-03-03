(

  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:$PATH
  export KDEDIR=${KDE_PREFIX:-$KDEDIR}

  ./configure    --prefix=${KDE_PREFIX:-$KDEDIR}     \
                 --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
                 --disable-debug                     \
                 --with-xinerama                     \
                 $OPTS                              &&

  default_make

 
) > $C_FIFO 2>&1
