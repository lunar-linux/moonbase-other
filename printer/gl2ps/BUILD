(


  OOT_BUILD_DIR="$SOURCE_DIRECTORY/$MODULE-build" &&

  . /etc/profile.d/qt4.rc &&

  mkdir $OOT_BUILD_DIR &&
  cd $OOT_BUILD_DIR &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             &&

  default_make

) > $C_FIFO 2>&1
