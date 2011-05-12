(

  if in_depends $MODULE perl; then
    PERL_ARCH=`arch` &&
    OPTS+=" -DPX_PERL_ARCH=$PERL_ARCH"
  fi &&

  OOSB_DIR="$SOURCE_DIRECTORY/$MODULE-build"  &&

  mkdir $OOSB_DIR  &&
  cd $OOSB_DIR     &&

  cmake $SOURCE_DIRECTORY/ -DCMAKE_INSTALL_PREFIX=$MODULE_PREFIX  \
                           -DCMAKE_BUILD_TYPE=RELEASE             \
                           $OPTS                                 &&

  default_make

) > $C_FIFO 2>&1
