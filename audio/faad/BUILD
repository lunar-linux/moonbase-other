(

  export CFLAGS="$CFLAGS -fPIC"
  # Disabled faad's mp4 support since its utterly broken!
  OPTS="$OPTS --with-drm --without-mp4v2"
 
  /bin/sh bootstrap &&
  default_build
  
) > $C_FIFO 2>&1

