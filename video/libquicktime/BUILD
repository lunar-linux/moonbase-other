
#  patch_it $SOURCE2 1 &&
  patch_it $SOURCE3 1 &&
  patch_it $SOURCE4 1 &&
  sedit "30i #include <libavutil/mem.h>" plugins/ffmpeg/ffmpeg.h &&
# Disabling gtk usage for now, causes the make to barf.
  OPTS+=" --enable-gpl --without-gtk"

  default_build
