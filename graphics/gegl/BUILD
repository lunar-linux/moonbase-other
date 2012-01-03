(

  #Temporary work around! Check at version bump
  if module_installed ffmpeg-svn || module_installed ffmpeg; then
    sedit 's:ffmpeg/avformat.h:libavformat/avformat.h:g' \
          operations/external/ff-load.c &&
    sedit 's:p->enc->error_resilience://p->enc->error_resilience:g' \
          operations/external/ff-load.c ;
  fi &&

# vala support is broken in 0.1.8 version
  OPTS+=" --disable-docs --without-vala "  &&

  default_build

) > $C_FIFO 2>&1
