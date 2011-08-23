(

  mkdir build-$MODULE &&
  cd build-$MODULE &&

  CFLAGS="-fPIC" &&

  OPTS="--enable-vp8 --enable-postproc --enable-shared --as=yasm \
        --enable-runtime-cpu-detect --disable-install-docs --enable-pic --disable-examples" &&

  ../configure $OPTS &&

  sedit "s:/usr/local:/usr:" config.mk &&

  default_make

) > $C_FIFO 2>&1
