(

  sedit "s:avcodec.h:libavcodec/avcodec.h:" src/ucil_avc_avi.c src/colorspace.c &&
  sedit "s:avutil.h:libavutil/avutil.h:" src/colorspace.c &&
  sedit "s:queue.h:sys/queue.h:" src/ucil_avc_avi.c &&

  default_build

) > $C_FIFO 2>&1
