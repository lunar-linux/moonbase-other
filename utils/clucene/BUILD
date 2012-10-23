(

  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&

  sedit "s:ELSEIF ( ZLIB:ELSE ( ZLIB:" src/shared/CMakeLists.txt &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  default_cmake_build

) > $C_FIFO 2>&1
