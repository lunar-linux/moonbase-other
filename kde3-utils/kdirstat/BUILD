(
  export QTDIR=/opt/lunar/qt/3
  export KDEDIR=/opt/lunar/kde/3  
  export LD_LIBRARY_PATH=$QTDIR/lib
  export PATH=$KDEDIR/bin:$QTDIR/bin:$PATH
  export LD_RUN_PATH=$KDEDIR/lib:$KDEDIR/lib/kde3

  ./configure  --prefix=$KDEDIR               \
               --disable-debug                \
               --with-qt-dir=$QTDIR           \
               --with-xinerama                \
               $OPTS                          &&

  make                              &&
  prepare_install                   &&
  make    install

) > $C_FIFO 2>&1
