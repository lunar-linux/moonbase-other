(

  sedit "s:/lib/udev:/usr/lib/udev:" udev/CMakeLists.txt &&
  sedit "s:UNKNOWN:1.0.8:" Modules/VersionTag.cmake  &&

  default_cmake_build

) > $C_FIFO 2>&1
