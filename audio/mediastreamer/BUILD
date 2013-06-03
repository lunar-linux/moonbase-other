
  patch_it $SOURCE2 1 &&

  sed -i -e "s:-O2::;s: -g::" configure.ac &&

  OPTS+=" --disable-gsm  --enable-video --disable-static" &&

  default_build
