(

  cd .. &&
  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  cd $SOURCE_DIRECTORY &&

  # Yeah, I know it looks redundant to specify the libusb path BUT
  # it's configure script cannot find it otherwise.
  # In fact ifp.h does ot get built unless ALL these are specified.
  OPTS="--enable-examples              \
        --with-libusb=/usr             \
        --with-kmodule=/usr/src/linux" &&

  default_build

) > $C_FIFO 2>&1
