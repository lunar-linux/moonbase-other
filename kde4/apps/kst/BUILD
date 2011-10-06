(

  OPTS+="  -DCMAKE_BUILD_TYPE=RELEASE -DCMAKE_INSTALL_PREFIX=/usr -Dkst_release=ON -Dkst_install_libdir=lib -Dkst_install_prefix=/usr" &&

  cmake cmake $OPTS &&
  default_make

) > $C_FIFO 2>&1
