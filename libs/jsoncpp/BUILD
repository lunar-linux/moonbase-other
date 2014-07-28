(

  GCC_VER=`lvu installed gcc`   &&
  scons platform=linux-gcc      &&

  prepare_install               &&
  mkdir -p /usr/include/$MODULE &&
  cp include/json/* /usr/include/$MODULE/ &&
  cp -r libs/linux-gcc-$GCC_VER/*linux-gcc-$GCC_VER* /usr/lib/ &&
  ln -sf /usr/lib/libjson_linux-gcc-$GCC_VER\_libmt.so /usr/lib/libjsoncpp.so.0 &&
  ln -sf /usr/lib/libjson_linux-gcc-$GCC_VER\_libmt.so /usr/lib/libjsoncpp.so

) > $C_FIFO 2>&1
