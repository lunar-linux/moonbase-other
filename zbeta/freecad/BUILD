(


  if [ `arch` == "x86_64" ] ; then
    CXXFLAGS+=" $CXXFLAGS -D_OCC64"
  fi &&

  OPTS+=" -DCOIN3D_DOC_PATH=/usr/share/doc/coin -DCOIN3D_DOC_TAGFILE=/usr/share/doc/coin/html/coin.tag \
          -DCMAKE_INSTALL_PREFIX=/usr" &&

  default_cmake_build  &&

  cd ../src/Tools/plugins/widget/ &&
  qmake plugin.pro &&
  default_make &&
  install libFreeCAD_widgets.so /usr/lib/qt4/plugins/designer/ 

) > $C_FIFO 2>&1
