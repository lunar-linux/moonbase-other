(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-build" &&

  mkdir $OOTB_DIR &&
  cd $OOTB_DIR    &&

  source /etc/profile.d/qt4.rc &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make &&

  sedit "s:Icon=:Icon=/usr/share/qgis/images/icons/:" $SOURCE_DIRECTORY/debian/qgis.desktop &&
  install $SOURCE_DIRECTORY/debian/qgis.desktop /usr/share/applications/ 

) > $C_FIFO 2>&1

