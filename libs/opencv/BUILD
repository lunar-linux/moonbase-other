(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-RELEASE" &&

  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR   &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX         \
                           -DCMAKE_BUILD_TYPE=RELEASE                    \
                           -DCMAKE_OPENCV_WHOLE_PROGRAM_OPTIMIZATION=ON  \
                           $OPTS                                        &&

  default_make

) > $C_FIFO 2>&1
