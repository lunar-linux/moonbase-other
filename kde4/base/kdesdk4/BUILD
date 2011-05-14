(

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&
  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
        -DCMAKE_BUILD_TYPE=RELEASE             \
        $OPTS $SOURCE_DIRECTORY               &&

  default_make

) > $C_FIFO 2>&1
