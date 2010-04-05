(

  . /etc/profile.d/qt4.rc &&

  sedit "s:Icon=klatexformula:Icon=$QTDIR/share/icons/hicolor/32x32/apps/klatexformula.png:" src/klatexformula.desktop &&
  sed -i "15i Categories=Qt;KDE;Office;" src/klatexformula.desktop &&

  qmake PREFIX=$MODULE_PREFIX          \
        INSTALLPREFIX=$MODULE_PREFIX   \
        BACKEND_SHAREDORSTATIC=shared  \
        $OPTS                         &&

  default_make

) > $C_FIFO 2>&1
