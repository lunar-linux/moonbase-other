(

  #Temporary work around! Check at version bump
  if module_installed ffmpeg-svn ; then
    sedit 's:ffmpeg/avformat.h:libavformat/avformat.h:g' \
          operations/external/ff-load.c &&
    sedit 's:p->enc->error_resilience://p->enc->error_resilience:g' \
          operations/external/ff-load.c ;
  fi &&

  default_build

) > $C_FIFO 2>&1
