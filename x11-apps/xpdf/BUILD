(

  patch_it $SOURCE2 1 &&

  OPTS="$OPTS --with-freetype2-includes=/usr/include/freetype2 \
            --with-gzip" &&

  # Need these exports to fix the freetype2 problems when freetype2 > 2.1.5
  export CXXFLAGS="-I/usr/include/freetype2 -I/usr/include" &&
  export CPPFLAGS="-I/usr/include" &&

  default_build

) > $C_FIFO 2>&1
