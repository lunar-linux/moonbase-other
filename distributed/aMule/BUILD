(

  patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  OPTS="$OPTS --disable-debug \
              --enable-optimize \
              --enable-amule-gui \
              --enable-amule-daemon \
              --enable-amulecmd \
              --enable-wxcas \
              --enable-cas \
              --enable-ccache" &&
  default_build

) > $C_FIFO 2>&1
