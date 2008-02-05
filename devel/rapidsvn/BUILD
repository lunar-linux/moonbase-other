(

  patch_it $SOURCE_CACHE/$SOURCE2 0  &&

  OPTS="$OPTS --with-apr-config=/usr/bin/apr-1-config \
              --with-apu-config=/usr/bin/apu-1-config "  &&

  default_build  &&
  install -m 755 -d /usr/share/pixmaps/ &&
  install -m 644 src/res/bitmaps/rapidsvn_48x48.png /usr/share/pixmaps/

) > $C_FIFO 2>&1
