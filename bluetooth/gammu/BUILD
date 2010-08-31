(

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  if in_depends $MODULE Python ; then
    VER=`lvu version Python | cut -c 1-3` &&
    OPTS="-DBUILD_PYTHON=/usr/bin/python$VER"
   else
    OPTS="-DWITH_PYTHON=OFF"
  fi &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           -DBUILD_SHARED_LIBS=ON                 \
                           -DENABLE_PROTECTION=OFF                \
                           -DINSTALL_LSB_INIT=OFF                 \
                           $OPTS                                 &&

  default_make


) > $C_FIFO 2>&1
