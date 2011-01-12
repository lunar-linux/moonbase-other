(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=Release             \
                           -DBUILD_SHARED_LIBS=TRUE               \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1

