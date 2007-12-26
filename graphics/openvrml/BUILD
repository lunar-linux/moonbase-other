(

  export BOOST_LIB_SUFFIX=-gcc42-mt
  export CPPFLAGS="$CPPFLAGS -I/usr/include/boost-1_34_1"

  sedit "s:(GLvoid):():" src/libopenvrml-gl/openvrml/gl/viewer.cpp

  default_build

) > $C_FIFO 2>&1
