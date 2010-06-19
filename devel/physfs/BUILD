(


  # Fixes compilation error:
  # cc1: warnings being treated as errors
  # /usr/src/physfs-2.0.0/archivers/zip.c: In function 'zip_find_end_of_central_dir':
  # /usr/src/physfs-2.0.0/archivers/zip.c:378: error: 'extra[0u]' may be used uninitialized in this function
  sedit "s:-Werror::" CMakeLists.txt  &&

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&


  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
                           -DCMAKE_BUILD_TYPE=RELEASE              \
                           -DPHYSFS_BUILD_WX_TEST=FALSE            \
                           -DPHYSFS_BUILD_TEST=FALSE               \
                           $OPTS                                  &&


  default_make

) > $C_FIFO 2>&1
