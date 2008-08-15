(

  if in_depends ffmpeg lame ; then
    OPTS+=" --with-ffmpeg-mp3lame"
  fi

  OPTS="$OPTS --enable-release --enable-x11 --enable-xvideo --enable-ffmpeg --enable-v4l"

  default_build

) > $C_FIFO 2>&1
