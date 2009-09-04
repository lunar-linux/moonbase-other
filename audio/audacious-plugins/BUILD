(

  # Ubuntu's patches
  patch_it $SOURCE2 1             &&
  patch_it debian/patches/001* 1  &&
  patch_it debian/patches/002* 1  &&
  patch_it debian/patches/003* 1  &&
  patch_it debian/patches/090* 1  &&

  OPTS+=" --enable-ipv6"  &&

  default_build

) > $C_FIFO 2>&1
