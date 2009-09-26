(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  # Fixes compilation error:
  # cc1: warnings being treated as errors
  # /usr/src/physfs-2.0.0/archivers/zip.c: In function 'zip_find_end_of_central_dir':
  # /usr/src/physfs-2.0.0/archivers/zip.c:378: error: 'extra[0u]' may be used uninitialized in this function
  sedit "s:-Werror::" CMakeLists.txt  &&

  cmake -DCMAKE_INSTALL_PREFIX:=/usr -DPHYSFS_BUILD_WX_TEST:=FALSE  &&
  default_make

) > $C_FIFO 2>&1
