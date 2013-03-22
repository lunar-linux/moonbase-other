(

  patch_it $SOURCE2 1 &&
  sedit "s:docdir=.*:docdir='/usr/share/doc':" configure.in &&

## this seems to be needed for a fresh install
  touch INSTALL aclocal  &&
  autoreconf  &&
  cd $SOURCE_DIRECTORY
##

  automake --add-missing --copy --gnu  &&
  autoconf  &&

  default_build

) > $C_FIFO 2>&1
