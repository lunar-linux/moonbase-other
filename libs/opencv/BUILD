
  patch_it $SOURCE2 1 &&

  OPTS+=" -DBUILD_WITH_DEBUG_INFO=OFF" &&

  default_cmake_build &&

# It doesn't install these binaries
  install bin/opencv_test* /usr/bin
