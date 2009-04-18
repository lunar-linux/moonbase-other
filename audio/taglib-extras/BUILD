(

  TAG_BUILD_DIR="$SOURCE_DIRECTORY/tag-build"

  mkdir $TAG_BUILD_DIR &&
  cd $TAG_BUILD_DIR &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE            &&

  default_make  

) > $C_FIFO 2>&1
