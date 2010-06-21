(
  patch_it $SOURCE2 1 &

## this seems to be needed for a fresh install
  autoreconf  &&
  cd $SOURCE_DIRECTORY
  touch INSTALL aclocal  &&
##

  automake --add-missing --copy --gnu  &&
  autoconf  &&

  default_build

) > $C_FIFO 2>&1
