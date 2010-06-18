(


  CFLAGS="-fPIC" &&

  OPTS="--enable-vp8 --enable-psnr  --enable-postproc --enable-shared \
        --enable-runtime-cpu-detect --CPU=$CPU --disable-install-docs" &&

  if [ "`arch`" = "x86_64" ]; then
   OPTS="--target=x86_64-linux-gcc"
  else
   OPTS="--target=x86-linux-gcc"
  fi  &&

  ./configure  $OPTS  &&

  sedit "s:/usr/local:/usr:" config.mk &&

  default_make

) > $C_FIFO 2>&1
