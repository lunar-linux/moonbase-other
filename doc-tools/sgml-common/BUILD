(
  patch_it $SOURCE2 1 &&

  touch INSTALL &&
  aclocal &&
  automake --add-missing --copy --gnu &&
  autoconf &&

  default_build

) > $C_FIFO 2>&1
