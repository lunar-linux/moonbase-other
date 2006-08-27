(
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                     \
	       --enable-final                      \
               --enable-fast-malloc=full           \
               --enable-kde-event-filter           \
               --with-xinerama                     \
               $OPTS                              &&

  default_make
 
) > $C_FIFO 2>&1
