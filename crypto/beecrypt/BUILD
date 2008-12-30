(

  unpack $SOURCE2 &&
  patch_it beecrypt-cvs-libaltdir.patch 0 &&
  patch_it beecrypt-4.1.2-threads.patch 1 &&
  patch_it beecrypt-4.1.2-python-Makefile-am.patch 1 &&
  patch_it beecrypt-4.1.2-python-debug-py-c.patch 1 &&
  patch_it beecrypt-4.1.2-gcc4.patch 1 &&
  patch_it beecrypt-4.1.2-build.patch 1 &&
  libtoolize --force --copy &&
  aclocal &&
  automake --add-missing &&
  autoreconf &&
  default_build

) > $C_FIFO 2>&1
