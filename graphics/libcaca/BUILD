(
  
  OPTS+=" --disable-debug --disable-doc"

  bad_flags "-Wl,-O1,--as-needed" &&
  bad_flags "-Wl,--as-needed" &&

  default_build

) > $C_FIFO 2>&1
