(

  patch_it $SOURCE2 0 &&

  . /etc/profile.d/qt4.rc  &&
  . /etc/profile.d/kde4.rc &&

  if module_installed Python ; then
   LIB_VERSION=`lvu version Python| cut -c -3`
  fi &&

  OPTS="-DENABLE_GLSL=ON -DENABLE_PYTHON=ON -DPYTHON_LIBRARY=/usr/lib/libpython$LIB_VERSION.so \
        -DSHARE_INSTALL_PREFIX=/usr/share" &&

  default_cmake_build &&

  sedit "s:Exec=:Exec=$MODULE_PREFIX/bin/:" /usr/share/applications/avogadro.desktop &&
  sedit "s:Icon=:Icon=/usr/share/pixmaps/:" /usr/share/applications/avogadro.desktop

) > $C_FIFO 2>&1
