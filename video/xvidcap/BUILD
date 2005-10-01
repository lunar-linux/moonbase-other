(

  # we want xvidcap to work with the latest ffmpeg
  cd src
  patch_it $SCRIPT_DIRECTORY/xvidcap-1.1.3-use-ffmpeg-0.4.9.patch 1 &&
  cd ..

  default_build

) > $C_FIFO 2>&1
