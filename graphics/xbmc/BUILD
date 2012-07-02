(

  patch_it $SOURCE2 1 &&

  # workaround for the terrible hack that is ffmpeg-building-inside-xbmc:
  # sedit 's/LDFLAGS=/LDFLAGS=-lz -lbz2 /' xbmc/cores/dvdplayer/Codecs/Makefile.in &&
  touch lib/libid3tag/libid3tag/INSTALL &&
  touch xbmc/screensavers/rsxs-0.9/libltdl/INSTALL &&
  touch xbmc/screensavers/rsxs-0.9/INSTALL &&
  touch lib/libapetag/INSTALL &&
  touch lib/libdvd/libdvdread/INSTALL &&
  touch lib/libdvd/libdvdnav/INSTALL &&

  sh -x bootstrap &&

  OPTS+=" --with-cpu --with-arch --disable-debug" &&

  default_build

) > $C_FIFO 2>&1
