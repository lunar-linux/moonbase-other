(

  # Fixes security bug: http://bugs.gentoo.org/show_bug.cgi?id=350681
  patch_it $SOURCE2 1  &&

  # Fixes segfault when closing
  patch_it $SOURCE3 1  &&

  OPTS+=" --enable-comics --enable-impress --enable-pixbuf"  &&

  default_build

) > $C_FIFO 2>&1
