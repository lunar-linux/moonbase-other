(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-buid" &&

  sedit "s:lib64/automoc4:lib64/automoc4 $KDE4_INSTALL_DIR/lib/automoc4/:" cmake/modules/FindAutomoc4.cmake &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
