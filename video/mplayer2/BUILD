(

  if in_depends $MODULE "DirectFB" ; then
    EXTRA_CFLAGS+=" -I/usr/include/directfb"
  fi

  if in_depends $MODULE "ffmpeg" ; then
    EXTRA_LIBS_MPLAYER+=" -lavutil -lavcodec -lavdevice -lavfilter -lavformat -lpostproc -lswscale"
  fi

  if in_depends $MODULE "fontconfig" ; then
    EXTRA_LIBS_MPLAYER+=" -lfontconfig"
  fi

  if in_depends $MODULE "libXext" ; then
    EXTRA_LIBS_MPLAYER+=" -lX11 -lXext"
  fi

  ./configure  --target=$BUILD                              \
               --prefix=/usr                                \
               --confdir=/etc                               \
               --extra-cflags="$EXTRA_CFLAGS"               \
               --extra-libs-mplayer="$EXTRA_LIBS_MPLAYER"   \
               $OPTS                                       &&

  default_make

) > $C_FIFO 2>&1
