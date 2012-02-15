(

  patch_it $SOURCE2 0 &&

# The first one I have found that is case sensitive to "RELEASE"
  OPTS+=" -DBUILD_SHARED_LIBS=TRUE -DCMAKE_BUILD_TYPE=Release" &&

  default_cmake_build

) > $C_FIFO 2>&1

