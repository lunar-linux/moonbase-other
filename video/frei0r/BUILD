
  patch_it $SOURCE2 2 &&

  OPTS+=" --enable-cpuflags" &&

  if in_depends $MODULE opencv-3 ; then
    LDFLAGS+=" -L/usr/share/OpenCV/3rdparty/lib/"
  fi &&

  ./autogen.sh &&

  default_build
