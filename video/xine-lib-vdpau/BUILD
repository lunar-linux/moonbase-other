(

#  sedit 's/\$sarchopt=\$archopt_val//' m4/optimizations.m4 &&

# Fixes the make failing with the lastest ffmpeg bump.
  sedit "s:RGBA32:RGB32:g" src/combined/ffmpeg/ff_video_decoder.c &&

  unset CFLAGS &&

  OPTS+=" --enable-static --with-xv-path=/usr/X11/lib --enable-mmap --enable-antialiasing"

  ./autogen.sh &&

  default_build

) > $C_FIFO 2>&1
