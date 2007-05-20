(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&

  if [ "$USE_X11" == "n" ]; then
    message "An X server is not installed, so xapm will not be built"
    sedit "s/apmd xapm/apmd/" Makefile
    sedit "/  xapm/d" Makefile
  fi &&

  default_make

) > $C_FIFO 2>&1
