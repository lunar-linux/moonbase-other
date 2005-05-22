(
  scons configure prefix=${KDE_PREFIX:-$KDEDIR}               \
                  qtincludes=${QT_PREFIX:-$QTDIR}/include     \
                  kdeincludes=${KDE_PREFIX:-$KDEDIR}/include  &&
  scons           &&
  prepare_install &&
  scons install
) > $C_FIFO 2>&1
