(

  # For some reason it was having a problem finding the .pfb
  # files provided by urw-fonts.
  OPTS+=" --with-ncsb-dir=/usr/share/fonts/urw-fonts" &&

  # the documentation is provided online and has a number
  # of additional dependencies
  OPTS+=" --disable-documentation" &&

  default_build

) > $C_FIFO 2>&1
