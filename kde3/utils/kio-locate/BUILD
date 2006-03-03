(

  export LD_LIBRARY_PATH=${QT_PREFIX:-$QTDIR}/lib
  export PATH=${QT_PREFIX:-$QTDIR}/bin:${KDE_PREFIX:-$KDEDIR}/bin:$PATH
  export LD_RUN_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3
  
  scons configure prefix=${KDE_PREFIX:-$KDEDIR}                \
                  qtincludes=${QT_PREFIX:-$QTDIR}/include      \
                  kdeincludes=${KDE_PREFIX:-$KDEDIR}/include  &&

  scons            &&
  prepare_install  &&
  scons install

) > $C_FIFO 2>&1
