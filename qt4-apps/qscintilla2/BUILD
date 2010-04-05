(

# install the editor class

  export PATH=$QTDIR/bin:$PATH
  source /etc/profile.d/qt4.rc
  cd Qt4

  qmake -o Makefile qscintilla.pro
  default_make

# install the Pythom bindings

  cd ../Python           &&
  python ./configure.py  &&
  default_make

) > $C_FIFO 2>&1
