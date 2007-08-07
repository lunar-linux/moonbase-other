(
  ./configure  --prefix=${QT_PREFIX:-$QTDIR}       \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                     \
               --enable-final                      \
               --enable-fast-malloc=full           \
               --with-xinerama                     \
               $OPTS                              &&

  default_make
 
) > $C_FIFO 2>&1
