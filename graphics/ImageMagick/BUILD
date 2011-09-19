(

  OPTS+=" --enable-shared=yes --disable-static"

# They say to run this if you got dirty autotools.
# autoreconf         &&

  default_config     &&

  make               &&
  prepare_install    &&
  make install-strip &&

#Seems other apps look for this, like transcode
  ln -sf /usr/lib/libMagick++.so /usr/lib/libMagick.so

) > $C_FIFO 2>&1
