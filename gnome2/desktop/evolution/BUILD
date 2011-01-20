(

  patch_it $SOURCE2 1  &&

  OPTS+=" --disable-nm"  &&

  # For the changes to Makefile.am to take effect
  intltoolize --force --copy --automake  &&
  autoreconf -fi  &&

  default_build

) > $C_FIFO 2>&1
