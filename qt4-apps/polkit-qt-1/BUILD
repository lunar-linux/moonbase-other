(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-buid" &&

  source /etc/profile.d/qt4.rc   &&
  source /etc/profile.d/kde4.rc  &&

  sedit "s:lib64/automoc4:lib64/automoc4 $KDE4_INSTALL_DIR/lib/automoc4/:" cmake/modules/FindAutomoc4.cmake &&

  mkdir $OOTB_DIR  &&
  cd $OOTB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
