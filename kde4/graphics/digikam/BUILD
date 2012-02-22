(

  source /etc/profile.d/qt4.rc  &&
  source /etc/profile.d/kde4.rc &&

  patch_it $SOURCE2 1 &&

  OPTS+=" -Wno-dev -DDIGIKAMSC_USE_PRIVATE_KDEGRAPHICS:BOOL=1" &&

  default_cmake_build

) > $C_FIFO 2>&1
