(
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --with-qtdoc-dir=${QTDIR}/doc/html  \
               --disable-debug                     \
	       --enable-final                      \
               --enable-fast-malloc=full           \
               --with-xinerama                     \
               $OPTS                              &&

  default_make
 
) > $C_FIFO 2>&1
