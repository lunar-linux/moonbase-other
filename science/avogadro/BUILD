(

  . /etc/profile.d/qt4.rc  &&
  . /etc/profile.d/kde4.rc &&

  if module_installed Python ; then
   LIB_VERSION=`lvu version Python| cut -c -3`
  fi &&

  AVO_BUILD_DIR="$SOURCE_DIRECTORY/avo-build" &&

  mkdir $AVO_BUILD_DIR &&
  cd $AVO_BUILD_DIR &&

  OPTS="-DENABLE_GLSL=ON -DENABLE_PYTHON=ON -DPYTHON_LIBRARY=/usr/lib/libpython$LIB_VERSION.so" &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
                           -DSHARE_INSTALL_PREFIX=/usr/share       \
                           -DCMAKE_BUILD_TYPE=RELEASE              \
                           $OPTS                                  &&

  default_make &&

  sedit "s:Exec=:Exec=$MODULE_PREFIX/bin/:" /usr/share/applications/avogadro.desktop &&
  sedit "s:Icon=:Icon=/usr/share/pixmaps/:" /usr/share/applications/avogadro.desktop

) > $C_FIFO 2>&1
