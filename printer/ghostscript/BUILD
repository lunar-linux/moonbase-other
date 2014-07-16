(

  # Remove local libs so we'll always use system libs,
  # and don't waste configure / compile time on them.
  verbose_msg "Removing unneeded local libs" &&
  rm -rf cups/libs expat freetype jbig2dec jpeg{,xr} lcms{,2} libpng tiff zlib Resource/Font Resource/CMap &&

  OPTS+=" --disable-compile-inits --enable-dynamic --with-system-libtiff --without-luratech --without-omni" &&
  # So it will use our system zlib.
  sedit "s:ZLIBDIR=src:ZLIBDIR=\$includedir:" configure.ac configure &&
  # Will run ./configure with Lunar's options, in default_build
  sedit "s:\$srcdir/configure:echo:" autogen.sh &&
  ./autogen.sh $OPTS &&

  default_build &&

  make install-so

) > $C_FIFO 2>&1
