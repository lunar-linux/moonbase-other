(
  export KDEDIR=/opt/lunar/kde/3
  export QTDIR=/opt/lunar/qt/3

  export PATH=$QTDIR/bin:$KDEDIR/bin:$PATH

  ./configure    --prefix=$KDEDIR                      \
                 --with-qt-dir=$QTDIR                  \
                 --disable-debug                       \
                 --enable-fast-malloc=full             \
                 --with-xinerama                       \
                 $OPTS                                &&

  make                 &&
  prepare_install      &&
  make install         

) > $C_FIFO 2>&1
