(

  patch_it $SOURCE2 0 &&
  cd nping &&
  patch_it $SOURCE2 0 &&
  cd ../ncat &&
  patch_it $SOURCE2 0 &&
  cd $SOURCE_DIRECTORY &&

  # use always nmaps own optimized library variants
  # this provides better reliability and performance
  OPTS+=" --with-libpcap=included --with-libdnet=included --with-libpcre=included" &&

  default_build

) > $C_FIFO 2>&1
