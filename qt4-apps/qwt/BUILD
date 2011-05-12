(

  source /etc/profile.d/qt4.rc &&

  sedit "s:/usr/local/qwt-\$\$QWT_VERSION:$QTDIR/:" qwtconfig.pri &&
  sedit "s:/doc:/doc/$MODULE:" qwtconfig.pri &&
  sedit "s:\$\${QWT_INSTALL_PREFIX}/plugins:/usr/lib/qt4/plugins:" qwtconfig.pri &&
  sedit "s:\$\${QWT_INSTALL_PREFIX}/features:/usr/share/qt4/mkspecs/features:" qwtconfig.pri &&

  qmake -recursive &&
  default_make

) > $C_FIFO 2>&1
