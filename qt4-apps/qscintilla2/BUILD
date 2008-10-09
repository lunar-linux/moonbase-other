(

# install the editor class

  export PATH=$QTDIR/bin:$PATH
  if module_installed qt4; then
    source /etc/profile.d/qt4.rc
    cd Qt4
  else
    if module_installed qt3; then
      source /etc/profile.d/qt3.rc
      cd Qt3
    fi
  fi
  qmake -o Makefile qscintilla.pro
  default_make

# install the Pythom bindings

  cd ../Python           &&
  python ./configure.py  &&
  default_make

) > $C_FIFO 2>&1
