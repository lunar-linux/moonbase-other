(
  export KDEDIR=/opt/lunar/kde/3
  export QTDIR=/opt/lunar/qt/3

  export LD_LIBRARY_PATH=$QTDIR/lib
  export PATH=$KDEDIR/bin:$QTDIR/bin:$PATH
  export LD_RUN_PATH=$KDEDIR/lib:$KDEDIR/lib/kde2

  ./configure  --prefix=$KDEDIR               \
               --disable-debug                \
               --with-qt-dir=$QTDIR           \
               $OPTS                          &&

  default_make

) > $C_FIFO 2>&1
