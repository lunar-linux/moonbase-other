(
  
#  cp INSTALL/make.inc.gfortran make.inc &&
#  sedit "s:O2:O2 -fPIC:" make.inc &&
#  sedit "s:O0:O0 -fPIC:" make.inc &&
#  make blaslib &&
#  make all     &&

#  prepare_install &&
#  install *.a /usr/lib
  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           -DBUILD_SHARED_LIBS=ON                 \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
