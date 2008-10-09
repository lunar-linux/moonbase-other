(

  . /etc/profile.d/qt3.rc
  cd qt                             &&
  qmake -o Makefile qscintilla.pro  &&
  default_make                      &&
  ln -f -s $QTDIR/lib/libqscintilla.so.7.0.1 $QTDIR/lib/libqscintilla.so  &&
  cp qextscintilla*.h $QTDIR/include  

) > $C_FIFO 2>&1
