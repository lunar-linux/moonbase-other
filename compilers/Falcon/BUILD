  sedit "s:SSLv2_method:SSLv23_method:" modules/native/feathers/socket/socket_sys_unix.cpp &&
  sedit "s:SSLv3_method:SSLv23_method:g" modules/native/feathers/socket/socket_sys_unix.cpp &&

  default_cmake_build &&

  ln -sf /usr/include/falcon`lvu version Falcon | cut -c 1-5`/falcon /usr/include/falcon
