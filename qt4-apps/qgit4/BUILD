(

  . /etc/profile.d/qt4.rc

  $QTDIR/bin/qmake qgit.pro &&
  make  &&
  prepare_install  &&
  install -m 755 -s bin/qgit ${QT_PREFIX:-$QTDIR}/bin
 
) > $C_FIFO 2>&1
