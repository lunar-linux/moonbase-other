(
  cp $MOONBASE/x11/$MODULE/marker.patch $SOURCE_DIRECTORY &&
  patch -p1 <marker.patch                                 &&
  cp Makefile.DIST Makefile                               &&
  xmkmf                                                   &&
  make all                                                &&
  prepare_install                                         &&
  cp xearth  /usr/X11R6/bin                               &&
  cp xearth.man /usr/share/man/man1/xearth.1              &&

  if ! [ -d /usr/share/doc/xearth/ ]; then
    mkdir -p /usr/share/doc/xearth/
  fi                                                      &&

  cp xearth.1x.html /usr/share/doc/xearth/                &&
  echo " Installation complete."

) > $C_FIFO 2>&1
