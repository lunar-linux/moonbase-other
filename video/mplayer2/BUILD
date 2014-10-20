
# Current version of ffmpeg has changed this and mplayer2 make will fail
# on to small a buffer.
  sedit "s:PADDING_SIZE 16:PADDING_SIZE 32:" libmpdemux/demuxer.h &&

  ./configure  --target=$BUILD                              \
               --prefix=/usr                                \
               --confdir=/etc/mplayer                       \
               $OPTS                                       &&

  default_make &&

  mkdir -p /etc/mplayer &&
  sedit 's/gmplayer/mplayer/g' etc/mplayer.desktop &&
  install -m 644 etc/mplayer.desktop /usr/share/applications/mplayer.desktop &&
  install -Dm644 etc/{codecs.conf,input.conf,example.conf} /etc/mplayer/
