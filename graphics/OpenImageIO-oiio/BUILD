
  if module_installed ffmpeg ; then
    OPTS+=" -DUSE_FFMPEG=ON"
  fi &&

  OPTS+=" -DEMBEDPLUGINS=OFF -DCMAKE_C_FLAGS=-fPIC -Wno-dev -DSTOP_ON_WARNING=OFF" &&

  default_cmake_build
