(

  export PATH=/opt/lunar/qt/3/bin:/opt/lunar/kde/3/bin:$PATH
  export KDEDIR=/opt/lunar/kde/3 
  export QTDIR=/opt/lunar/qt/3
  cd qt &&
  qmake -o Makefile qscintilla.pro &&
  make                 &&
  prepare_install      &&
  make install &&
  cp qextscintilla*.h $QTDIR/include &&
  ln -f -s /opt/lunar/qt/3/libqscintilla.so.3 /opt/lunar/qt/3/libqscintilla.so 
) > $C_FIFO 2>&1
