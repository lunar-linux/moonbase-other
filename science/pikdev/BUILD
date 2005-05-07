( 
  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3


  export KDEDIRS=${KDE_PREFIX:-$KDEDIR} &&
  OPTS="$OPTS --prefix=${KDE_PREFIX:-$KDEDIR}" &&
  default_build
) > $C_FIFO 2>&1
