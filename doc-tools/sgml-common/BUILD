(
  patch_it $SOURCE2 1 &&

  aclocal &&
  automake --add-missing --copy --gnu &&
  autoconf &&

  default_build

) > $C_FIFO 2>&1
