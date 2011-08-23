(

  . /etc/profile.d/qt4.rc &&

  LDFLAGS="-ldl" &&

  if [ `arch` == "x86_64" ] ; then
    OPTS+=" -DWANT_LIB64=ON" &&
    CFLAGS+=" -fPIC"
  fi &&

  OPTS+=" -DPODOFO_BUILD_SHARED=ON" &&

  default_cmake_build

) > $C_FIFO 2>&1
 
