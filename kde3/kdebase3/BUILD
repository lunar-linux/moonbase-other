(
  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3
  
  cd kwin &&
  patch_it ../kwin_shadow-0.8.0/kdebase.kwin-kwin_shadow-3.2.2.patch 0 &&
  cd .. &&
  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}      \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}   \
               --disable-debug                      \
	       --enable-final                       \
               --enable-fast-malloc=full            \
               --with-xinerama                      \
               $OPTS                                &&

  default_make
 
) > $C_FIFO 2>&1
