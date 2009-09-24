(

  OOT_BUILD="$SOURCE_DIRECTORY/$MODULE-build"

  mkdir $OOT_BUILD  &&
  cd $OOT_BUILD     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE            &&

  default_build

) > $C_FIFO 2>&1
