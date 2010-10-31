(

  cd .. &&
  patch_it $SOURCE_CACHE/$SOURCE2 0 &&
  cd $SOURCE_DIRECTORY &&

  OPTS="--with-libusb=/usr --disable-examples" &&

  default_build

) > $C_FIFO 2>&1
