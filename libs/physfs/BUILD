(


  # Fixes compilation error:
  # cc1: warnings being treated as errors
  # /usr/src/physfs-2.0.0/archivers/zip.c: In function 'zip_find_end_of_central_dir':
  # /usr/src/physfs-2.0.0/archivers/zip.c:378: error: 'extra[0u]' may be used uninitialized in this function
  sedit "s:-Werror::" CMakeLists.txt  &&

  OPTS+=" -DPHYSFS_BUILD_WX_TEST=FALSE -DPHYSFS_BUILD_TEST=FALSE" &&
  
  default_cmake_build

) > $C_FIFO 2>&1
