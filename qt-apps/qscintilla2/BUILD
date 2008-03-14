(

  if module_installed qt4; then
   . /etc/profile.d/qt4.rc
   export PATH=$QTDIR/bin:$PATH
   cd Qt4
   qmake -o Makefile qscintilla.pro
   default_make
  fi  &&

  if module_installed qt3; then
  . /etc/profile.d/qt3.rc
  export PATH=$QTDIR/bin:$PATH
  cd Qt3
  qmake -o Makefile qscintilla.pro
  default_make
  fi

) > $C_FIFO 2>&1
