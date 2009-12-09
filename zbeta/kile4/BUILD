(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build" &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX   \
                           -DCMAKE_BUILD_TYPE=RELEASE              \
                           $OPTS                                  &&

  default_make

) > $C_FIFO 2>&1
