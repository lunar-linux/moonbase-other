(

  . /etc/profile.d/qt3.rc

  export PATH=$QTDIR/bin:$PATH
  cd Qt3                            &&
  qmake -o Makefile qscintilla.pro  &&
  default_make                      

) > $C_FIFO 2>&1
