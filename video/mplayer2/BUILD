
# Current version of ffmpeg has changed this and mplayer2 make will fail
# on to small a buffer.
  sedit "s:PADDING_SIZE 16:PADDING_SIZE 32:" libmpdemux/demuxer.h &&

  ./configure  --target=$BUILD                              \
               --prefix=/usr                                \
               --confdir=/etc                               \
               $OPTS                                       &&

  default_make
