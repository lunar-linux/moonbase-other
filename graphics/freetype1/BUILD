(
  patch_it $SOURCE_CACHE/$SOURCE2 1	&&
  export CC="gcc"               &&
  ./configure  --prefix=/usr    \
               --enable-static  &&
  make                          &&
  prepare_install               &&
  make    install

) > $C_FIFO 2>&1
