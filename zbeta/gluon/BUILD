(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build" &&
  mkdir $OOTB_DIR &&
  cd $OOTB_DIR &&

  source /etc/profile.d/qt4.rc  &&
  source /etc/profile.d/kde4.rc &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           -DBUILD_PHYSICS_COMPONENTS=ON          \
                           -DBUILD_PHYSICS_ASSETS=ON              \
                           -DBUILD_GLUON_PLAYER=ON                \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
