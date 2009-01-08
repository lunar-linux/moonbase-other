(

  unpack $SOURCE2 &&
  patch_it beecrypt-cvs-libaltdir.patch 0 &&
  for patch in `ls $MODULE-$VERSION-*.patch`; do patch_it $patch 1; done &&
  libtoolize --force --copy &&
  aclocal &&
  automake --add-missing &&
  autoreconf &&
  default_build

) > $C_FIFO 2>&1
