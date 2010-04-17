(
  cp ${SOURCE_CACHE}/$SOURCE2 rpm2cpio  &&
  patch_it $SOURCE3 0 &&
  make                &&
  prepare_install     &&
  install  -s  rpmunpack  /usr/bin  &&
  install  rpm2cpio /usr/bin
) > $C_FIFO 2>&1
