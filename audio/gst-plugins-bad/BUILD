(

  #temporary fix to support x264-git build 63 and above
  #check this at the next release!
  sedit 's:b_bframe_adaptive:i_bframe_adaptive:g' ext/x264/gstx264enc.c

  #xvidcore doesn't use pkgconfig, and gstreamer doesn't use -pthread
  #This leaves us to fix the problem
  if in_depends $MODULE xvidcore ; then
    sedit 's:\"-lxvidcore:\"-pthread -lxvidcore:g' configure
  fi

  #gstreamer explicitly checks for swfdec-0.3,
  #but it compiles just fine with the current version
  if in_depends $MODULE swfdec ; then
      sedit 's:swfdec-0.3:swfdec-0.8:g' configure
  fi

  #Disable x264, since x264-git doesn't work with it, and
  #I can't seem to find a version of x264-snapshot that does either

  OPTS="$OPTS  --disable-valgrind  \
               --disable-debug     \
               --disable-examples  \
               --disable-x264"

  default_build

) > $C_FIFO 2>&1 
