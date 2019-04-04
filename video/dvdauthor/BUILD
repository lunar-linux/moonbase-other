  sed -e 's|freetype-config|pkg-config freetype2|' -i configure.ac &&

  patch_it $SOURCE2 1 &&
  sed -e 's|MagickWand|wand|' -i src/subgen-image.c &&

  autoreconf &&

  default_build
