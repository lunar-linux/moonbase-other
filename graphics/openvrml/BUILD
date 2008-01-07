(

  BOOST_VER=`lvu version boost | sed "s:\.:_:g"`
  GCC_VER=`lvu version gcc | sed "s:\.::g" | cut -c 1-2`

  export BOOST_LIB_SUFFIX=-gcc${GCC_VER}-mt
  export CPPFLAGS="$CPPFLAGS -I/usr/include/boost-${BOOST_VER}"

  default_build

) > $C_FIFO 2>&1
