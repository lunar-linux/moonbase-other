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

  OPTS+=" --disable-static --disable-valgrind --disable-debug --disable-examples" &&

  # the srtp module fails via 'AES_ICM' not declared
  OPTS+=" --disable-srtp" &&

  default_build
