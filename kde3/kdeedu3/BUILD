(
  QTDIR=/opt/lunar/qt/3
  KDEDIR=/opt/lunar/kde/3 

  export LD_LIBRARY_PATH=$QTDIR/lib
  export PATH=$QTDIR/bin:$KDEDIR/bin:$PATH
  export LD_RUN_PATH=$KDEDIR/lib:$KDEDIR/lib/kde3

  ./configure    --prefix=$KDEDIR       \
                 --enable-final         \
                 --disable-debug        \
                 --with-qt-dir=$QTDIR   \
                 --with-xinerama        \
                 $OPTS                  &&

  make              &&
  prepare_install   &&
  make install      

) > $C_FIFO 2>&1
		   
