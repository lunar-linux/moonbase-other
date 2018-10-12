
  sedit "s:av_close_input_file(lavf_dmx_context);:avformat_close_input(lavf_dmx_context);:" import/probe_ffmpeg.c &&

# ImageMagick-7.x removed magick/api.h needed by transcode, disabling.
  OPTS+=" --enable-ffmpeg           \
          --enable-libmpeg2         \
          --enable-libmpeg2convert  \
          --enable-libpostproc      \
          --disable-imagemagick     \
          --enable-experimental"    &&

  default_build
