(

  export LDFLAGS="$LDFLAGS "

  export LD_LIBRARY_PATH=/opt/lunar/qt/3/lib
  export PATH=/opt/lunar/qt/3/bin:/opt/lunar/kde/3/bin:$PATH
  export LD_RUN_PATH=/opt/lunar/kde/3/lib:/opt/lunar/kde/3/lib/kde3
  QTDIR=/opt/lunar/qt/3
  KDEDIR=/opt/lunar/kde/3

  ./configure    --prefix=/opt/lunar/kde/3            \
                 --enable-final                       \
                 --disable-debug                      \
                 --with-qt-dir=/opt/lunar/qt/3        \
                 $OPTS                                &&

  make                 &&
  prepare_install      &&
  make install         

 
) > $C_FIFO 2>&1
