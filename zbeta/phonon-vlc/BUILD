(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           -DCMAKE_INCLUDE_PATH=$MODULE_PREFIX/include \
                           -DCMAKE_LIBRARY_PATH=$MODULE_PREFIX/lib     \
                           $OPTS                                 &&

  default_make &&

  kbuildsycoca4 --noincremental

) > $C_FIFO 2>&1
