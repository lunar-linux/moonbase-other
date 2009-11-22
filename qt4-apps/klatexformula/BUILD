(

  . /etc/profile.d/qt4.rc &&

  qmake PREFIX=$MODULE_PREFIX          \
        INSTALLPREFIX=$MODULE_PREFIX   \
        BACKEND_SHAREDORSTATIC=shared  \
        $OPTS                         &&

  default_make

#  sedit "s:Office;:Qt;KDE;Office;:" $QTDIR/share/applications/klatexformula.desktop &&
#  sedit "s:Exec=:Exec=$QTDIR/bin/:" $QTDIR/share/applications/klatexformula.desktop &&
#  sedit "s:Icon=klatexformula:Icon=$QTDIR/share/icons/hicolor/128x128/apps/klatexformula.png:" $QTDIR/share/applications/klatexformula.desktop

) > $C_FIFO 2>&1
