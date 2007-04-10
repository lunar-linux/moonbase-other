(
  sedit "s:\/\* #define FT_CONFIG_OPTION_SUBPIXEL_RENDERING \*\/:#define FT_CONFIG_OPTION_SUBPIXEL_RENDERING:g" include/freetype/config/ftoption.h &&

  if [ $BYTECODE == "y" ] ; then
    sed -i -r 's:.*(#.*BYTE.*) .*:\1:' \
       include/freetype/config/ftoption.h
  fi &&

  default_build

) > $C_FIFO 2>&1
