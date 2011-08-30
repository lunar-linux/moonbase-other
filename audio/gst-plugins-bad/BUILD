(

# Some giggling for the mjpegtools bump.
  sedit "s:ontheflyratectl.hh:ontheflyratectlpass1.hh:" ext/mpeg2enc/gstmpeg2encoder.cc &&
  sed -i "31i #include <ontheflyratectlpass2.hh>" ext/mpeg2enc/gstmpeg2encoder.cc &&
  sed -i "32d" ext/mpeg2enc/gstmpeg2encoder.cc &&
  sed -i "32d" ext/mpeg2enc/gstmpeg2encoder.cc &&

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

  OPTS+=" --disable-static --disable-valgrind --disable-debug --disable-examples" &&

  default_build

) > $C_FIFO 2>&1
