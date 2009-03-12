(

  patch_it $SOURCE_CACHE/$SOURCE2 0 &&

  if in_depends qt4; then
   . /etc/profile.d/qt4.rc
  fi &&

  if in_depends ffmpeg lame ; then
    OPTS+=" --with-ffmpeg-mp3lame"
  fi &&

  OPTS="$OPTS --enable-release --enable-x11 --enable-xvideo --enable-ffmpeg --enable-v4l"

  default_build

) > $C_FIFO 2>&1
