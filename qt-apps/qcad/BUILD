(
  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  sedit "s:QMAKE_CXXFLAGS_DEBUG += -pedantic:#QMAKE_CXXFLAGS_DEBUG += -pedantic":g mkspecs/defs.pro
  sedit "s:QMAKE_CXXFLAGS += -pedantic:#QMAKE_CXXFLAGS += -pedantic":g mkspecs/defs.pro

  cd scripts                 &&
  ./build_qcad.sh notrans    &&

  prepare_install            &&

  mkdir -p /opt/lunar/qcad   &&
  cd $SOURCE_DIRECTORY/qcad  &&

  cp -rv qcad doc data fonts patterns qm scripts /opt/lunar/qcad

) > $C_FIFO 2>&1
