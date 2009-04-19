(

  . /etc/profile.d/qt4.rc

  cd generator     &&
  qmake            &&
  make release     &&
  ./generator      &&

  cd ../qtbindings &&
  qmake            &&
  make             &&

  prepare_install  &&
  install ../plugins/script/* $QTDIR/plugins/script/

) > $C_FIFO 2>&1
