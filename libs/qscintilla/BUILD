(

  cd qt                               &&
  qmake -o Makefile qscintilla.pro    &&
  default_make                        &&
  ln -f -s $QTDIR/lib/libqscintilla.so.4.0.0 $QTDIR/lib/libqscintilla.so &&
  cp qextscintilla*.h $QTDIR/include  
) > $C_FIFO 2>&1
