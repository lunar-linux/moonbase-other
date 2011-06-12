(

  # workaround for the terrible hack that is ffmpeg-building-inside-xbmc:
  sedit 's/LDFLAGS=/LDFLAGS=-lz -lbz2 /' xbmc/cores/dvdplayer/Codecs/Makefile.in &&
  sh bootstrap &&
  default_build

) > $C_FIFO 2>&1
