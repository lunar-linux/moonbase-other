(

  # remove local libs so we'll always use system libs
  # and don't waste configure / compile time on them
  verbose_msg "removing unneeded local libpng"     &&
  rm -rf libpng                                    &&
  verbose_msg "removing unneeded local jpeg"       &&
  rm -rf jpeg*                                     &&
  verbose_msg "removing unneeded local lcms"       &&
  rm -rf lcms                                      &&

  if in_depends ghostscript freetype2 ; then
     verbose_msg "removing unneeded local freetype"
     rm -rf freetype
  fi &&

  if in_depends ghostscript tiff ; then
     verbose_msg "removing unneeded local tiff"
     rm -rf tiff
  fi &&

  if in_depends ghostscript jasper ; then
     verbose_msg "removing unneeded local jasper"
     rm -rf jasper
  fi &&

  if in_depends ghostscript jbig2dec ; then
     verbose_msg "removing unneeded local jbig2dec"
     rm -rf jbig2dec
  fi &&

  CFLAGS+=" -fPIC" &&

  ./autogen.sh $OPTS &&

  if in_depends ghostscript libpaper ; then
     sedit "s:lpaper:llibpaper:g" configure
  fi &&

  default_make &&

  make install-so

) > $C_FIFO 2>&1
