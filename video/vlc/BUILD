(

  patch_it $SOURCE2 0 &&
  patch_it $SOURCE3 0 &&

  if in_depends ffmpeg lame ; then
    OPTS+=" --with-ffmpeg-mp3lame"
  fi

  OPTS="$OPTS --enable-release --enable-x11 --enable-xvideo --enable-ffmpeg"

  default_build

) > $C_FIFO 2>&1
