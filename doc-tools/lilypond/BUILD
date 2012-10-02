(

  # For some reason it has a problem finding the .pfb
  # files provided by urw-fonts.
  OPTS+=" --with-ncsb-dir=/usr/share/fonts/urw-fonts --disable-documentation" &&

  ./autogen.sh --noconfigure &&

  mkdir build &&
  cd build/ &&

  ../configure --prefix=/usr $OPTS &&

  default_make

) > $C_FIFO 2>&1
