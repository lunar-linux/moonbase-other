(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  sedit "s:share/pkgconfig:/usr/lib/pkgconfig:g" CMakeLists.txt &&                                                                                                                                                                  

  mkdir $OOSB_DIR  &&                                                                                                                                             
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
