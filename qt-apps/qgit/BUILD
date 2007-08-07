(

  . /etc/profile.d/qt3.rc

  ./configure  --prefix=${QT_PREFIX:-$QTDIR}       \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               $OPTS                              &&

  make  &&
  prepare_install  &&
  install -m 755 src/qgit ${QT_PREFIX:-$QTDIR}/bin
 
) > $C_FIFO 2>&1
