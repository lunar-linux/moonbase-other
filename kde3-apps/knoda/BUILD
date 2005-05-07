(
  
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
	       --with-hk_classes-dir=${KDE_PREFIX:-$KDEDIR}/lib/hk_classes \
	       --with-hk_classes-incdir=${KDE_PREFIX:-$KDEDIR}/include/hk_classes \
               --disable-debug            \
               --enable-fast-malloc=full  \
               --with-xinerama            \
               $OPTS                     &&

  default_make
 
) > $C_FIFO 2>&1
