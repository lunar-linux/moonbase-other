(
  export KDEDIR=/opt/lunar/kde/3
  export PATH=/opt/lunar/qt/3/bin:$KDEDIR/bin:$PATH
  ./configure    --prefix=$KDEDIR                      \
                 --with-qt-dir=/opt/lunar/qt/3         \
                 --disable-debug                       \
                 --enable-fast-malloc=full             \
                 --with-xinerama                       \
                 $OPTS                                &&

  make                 &&
  prepare_install      &&
  make install         

 
) > $C_FIFO 2>&1
