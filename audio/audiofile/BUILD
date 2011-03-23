(

  OPTS+=" --disable-static" &&

  # Get rid the aclocal warning about underqutoed definition
  sedit  's/AM_PATH_AUDIOFILE,/[AM_PATH_AUDIOFILE],/'  audiofile.m4  &&

  default_build

) > $C_FIFO 2>&1
