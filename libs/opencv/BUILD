(

  if in_depends $MODUE tbb ; then
    OPTS+=" -DTBB_LIB_DIR=/usr/lib"
  fi &&

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  default_cmake_build &&

# It doesn't install these binaries
  install bin/opencv_test* /usr/bin

) > $C_FIFO 2>&1
