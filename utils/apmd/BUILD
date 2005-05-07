(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  patch_it $SOURCE_CACHE/$SOURCE3 1 &&

  if ! module_installed xserver ; then
    message "xfree86 server is not installed, so xapm will not be built"
    sedit "s/apmd xapm/apmd/" Makefile
    sedit "/  xapm/d" Makefile
  fi &&

  default_make

) > $C_FIFO 2>&1
