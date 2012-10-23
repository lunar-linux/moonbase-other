(

  patch_it $SOURCE2 1 &&

  sed -i "15i #include <libavutil/mathematics.h>" src/ffmpeg.h &&

  sedit "s:ftello:ftell:g" src/vorbis.c &&

  OPTS+=" --with-distro=Lunar-Linux" &&

  default_build 

) > $C_FIFO 2>&1
