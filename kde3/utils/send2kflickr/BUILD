(
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                     \
               $OPTS                              &&

  default_make
 
) > $C_FIFO 2>&1
