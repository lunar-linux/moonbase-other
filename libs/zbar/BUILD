(

  export CFLAGS="" &&
  sed -i 's|linux/videodev.h|libv4l1-videodev.h|g' {zbar/video/v4l1.c,include/config.h.in,configure.ac,configure} &&

  # they fucked up the video detection
  # and autoreconf fails for some reason...
  # If you need it, fix it.
  OPTS+=" --disable-video" &&

  default_build

) > $C_FIFO 2>&1
