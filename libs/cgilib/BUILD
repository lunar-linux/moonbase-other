(

  ACLOCAL_VER=`lvu version automake|cut -c 1-4` &&
  sedit "s:1.10:$ACLOCAL_VER:" configure &&

  libtoolize &&

  default_build
) > $C_FIFO 2>&1
