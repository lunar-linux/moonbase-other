(

  . /etc/profile.d/qt3.rc

  ./configure  --prefix=${QT_PREFIX:-$QTDIR}       \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                     \
	       --enable-final                      \
               --enable-fast-malloc=full           \
               --with-xinerama                     \
               $OPTS                              &&

  make  &&
  prepare_install  &&
  install -m 755 src/qgit ${QT_PREFIX:-$QTDIR}/bin
 
) > $C_FIFO 2>&1
