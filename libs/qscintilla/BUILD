(

  cd qt                               &&
  qmake -o Makefile qscintilla.pro    &&
  default_make                        &&
  cp qextscintilla*.h $QTDIR/include  &&
  ln -f -s $QTDIR/lib/libqscintilla.so.3 $QTDIR/lib/libqscintilla.so 

) > $C_FIFO 2>&1
