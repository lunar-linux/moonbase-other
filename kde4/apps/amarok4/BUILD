(

  OOTB_DIR="$SOURCE_DIRECTORY/$MODULE-RELEASE" &&

  source /etc/profile.d/qt4.rc &&

  sedit "s:/opt/local:$QTDIR:g" cmake/modules/FindLibLastFm.cmake &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
