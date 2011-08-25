(

  if in_depends $MODULE perl; then
    PERL_ARCH=`arch` &&
    OPTS+=" -DPX_PERL_ARCH=$PERL_ARCH"
  fi &&

  default_cmake_build

) > $C_FIFO 2>&1
