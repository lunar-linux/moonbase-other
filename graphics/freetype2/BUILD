(

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&

  sed -i -r 's:.*(#.*SYSTEM_ZLIB.*) .*:\1:' \
    include/freetype/config/ftoption.h  &&

  sed -i -r 's:.*(#.*SUBPIXEL_RENDERING.*) .*:\1:' \
    include/freetype/config/ftoption.h  &&

  sed -i -r 's:.*(#.*INCREMENTAL.*) .*:\1:' \
    include/freetype/config/ftoption.h  &&

  sed -i 's@^#define\ TT_CONFIG_OPTION_UNPATENTED_HINTING@#undef\ TT_CONFIG_OPTION_UNPATENTED_HINTING@' \
    include/freetype/config/ftoption.h  &&

  sed -i -r 's:.*(#.*USE_BZIP2.*) .*:\1:' \
    include/freetype/config/ftoption.h  &&

  sed -i 's@^#\ AUX@AUX@' modules.cfg  &&

  default_build  &&
  ln -sf /usr/include/freetype2/freetype /usr/include/freetype

) > $C_FIFO 2>&1
