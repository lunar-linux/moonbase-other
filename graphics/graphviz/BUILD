
  if in_depends $MODULE %JAVA_SDK ; then
    CFLAGS+=" -I/usr/java/latest/include/ -I/usr/java/latest/include/linux/" &&
    CPPFLAGS+=" -I/usr/java/latest/include/ -I/usr/java/latest/include/linux/"
  fi &&

  OPTS+=" --with-libgd --with-fontconfig --without-cgraph" &&

  default_build
