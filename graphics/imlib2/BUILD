
  patch_it $SOURCE2 1 &&

  sedit "s:\@my_libs\@::g" imlib2-config.in &&

  OPTS+=" --disable-static" &&

  default_build
