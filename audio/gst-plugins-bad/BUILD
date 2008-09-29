(

  #temporary fix to support x264-git build 63 and above
  #check this at the next release!
  sedit 's:b_bframe_adaptive:i_bframe_adaptive:g' ext/x264/gstx264enc.c

  OPTS="$OPTS  --disable-valgrind  --disable-debug  --disable-examples"

  default_build

) > $C_FIFO 2>&1 
