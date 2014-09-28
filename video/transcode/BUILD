
  patch_it $SOURCE2 1 &&

  sedit "s:av_close_input_file(lavf_dmx_context);:avformat_close_input(lavf_dmx_context);:" import/probe_ffmpeg.c &&

  OPTS+=" --enable-ffmpeg           \
          --enable-libmpeg2         \
          --enable-libmpeg2convert  \
          --enable-libpostproc      \
          --enable-experimental"    &&

  default_build
