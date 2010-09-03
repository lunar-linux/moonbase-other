(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"

  source /etc/profile.d/qt4.rc &&
  source /etc/profile.d/kde4.rc &&

  mkdir $OOSB_DIR &&
  cd $OOSB_DIR &&

  OPTS="-DR_HOME=/usr/lib/R -DR_LIBDIR=/usr/lib/R/lib"

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&
  default_make

) > $C_FIFO 2>&1
