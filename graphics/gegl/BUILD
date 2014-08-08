
  patch_it $SOURCE2 0 &&

  if in_depends $MODULE v4l-utils ; then
    sedit "s:linux/videodev.h:libv4l1-videodev.h:g" configure.ac &&
    autoconf &&
    patch_it $SOURCE3 1
  fi &&

  OPTS+=" --disable-docs"  &&

  default_build
