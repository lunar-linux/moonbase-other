(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  cmake -DCMAKE_INSTALL_PREFIX:=/usr -DPHYSFS_BUILD_WX_TEST:=FALSE  &&
  default_make

) > $C_FIFO 2>&1
