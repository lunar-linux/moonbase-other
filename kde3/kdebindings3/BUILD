(
  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3
 
  # java support ?
  if module_installed j2sdk; then
    OPTS="$OPTS --with-java=/usr/lib/j2sdk$(installed_version j2sdk)"
  else
    OPTS="$OPTS --without-java"
  fi  &&

  ./configure  --prefix=${KDE_PREFIX:-$KDEDIR}     \
               --with-qt-dir=${QT_PREFIX:-$QTDIR}  \
               --disable-debug                     \
	       --enable-final                      \
               --enable-fast-malloc=full           \
               --with-xinerama                     \
               $OPTS                              &&

  default_make
 
) > $C_FIFO 2>&1
