
  patch_it $SOURCE2 1 &&

  if in_depends $MODUE tbb ; then
    OPTS+=" -DTBB_LIB_DIR=/usr/lib"
  fi &&

  default_cmake_build &&

# It doesn't install these binaries
  install bin/opencv_test* /usr/bin
