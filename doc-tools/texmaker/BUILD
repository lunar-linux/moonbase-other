(

  . /etc/profile.d/qt4.rc                                       &&

  PATH=$QTDIR/bin:$PATH                                         &&
  LD_LIBRARY_PATH=$QTDIR/lib:$LD_LIBRARY_PATH                   &&
  DYLD_LIBRARY_PATH=$QTDIR/lib:$DYLD_LIBRARY_PATH               &&
  export QTDIR PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH           &&

  PREFIX=$QTDIR                                                 &&
  qmake -unix PREFIX=$PREFIX texmaker.pro                       &&

  make                                                          &&
  prepare_install                                               &&
  make install                                                  &&

  echo "Icons and desktop file can be found in $PREFIX/share/textmaker"


) > $C_FIFO 2>&1
