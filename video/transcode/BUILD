
  mv configure.in configure.ac &&

  sed -e 's|freetype/ftglyph.h|freetype2/freetype/ftglyph.h|' -i filter/subtitler/load_font.c &&

  sedit "s:av_close_input_file(lavf_dmx_context);:avformat_close_input(lavf_dmx_context);:" import/probe_ffmpeg.c &&

  autoreconf -vi &&

  OPTS+=" --enable-ffmpeg           \
          --enable-libmpeg2         \
          --enable-libmpeg2convert  \
          --enable-libpostproc      \
          --enable-experimental"    &&

  default_build
