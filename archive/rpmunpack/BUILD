(

  cp ${SOURCE_CACHE}/$SOURCE2 rpm2cpio  &&
  patch_it $SOURCE3 0 &&
  make                &&
  prepare_install     &&
  install -m755 -s  rpmunpack  /usr/bin/  &&

  if ! module_installed rpm && ! module_installed rpm-old ; then
    # rpm module provides /usr/bin/rpm2cpio
    install -m755 rpm2cpio /usr/bin/
  fi

) > $C_FIFO 2>&1
