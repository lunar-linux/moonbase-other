(
  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  patch_it $SOURCE_CACHE/$SOURCE3 0  &&

  # Disabled faad's mp4 support since its utterly broken!
  OPTS="$OPTS --without-drm --without-mp4v2"
 
  /bin/sh bootstrap &&
  default_build
  
) > $C_FIFO 2>&1

