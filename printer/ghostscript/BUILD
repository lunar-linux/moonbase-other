(

  # Remove local libs so we'll always use system libs,
  # and don't waste configure / compile time on them.
  verbose_msg "Removing unneeded local libs" &&
  rm -rf expat freetype jasper jbig2dec jpeg{,xr} lcms{,2} libpng tiff zlib &&

  OPTS+=" --disable-compile-inits --enable-dynamic --with-system-libtiff LIBS=-lz --with-install-cups" &&

  # Will run ./configure with Lunar's options, in default_build
  sedit "s:\$srcdir/configure:echo:" autogen.sh &&

  ./autogen.sh $OPTS &&

  default_build &&

  make install-so

) > $C_FIFO 2>&1
