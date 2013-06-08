
  OPTS+=" --enable-shared --disable-static" &&

# They say to run this if you got dirty autotools.
#  autoreconf         &&

  default_config     &&

# libgvpr.pc uses cgraph
  if in_depends $MODULE graphviz ; then
    sedit "s:-lgraph:-lcgraph:g" Makefile
  fi &&

  make               &&
  prepare_install    &&
  make install-strip &&

#Seems other apps look for this, like transcode
#They felt the need to version this
  ln -sf /usr/lib/libMagick++-*.so /usr/lib/libMagick.so
