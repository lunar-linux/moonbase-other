(
  cd libgnomeprint &&
  sedit "s:freetype/freetype.h>:ft2build.h>\n#include FT_FREETYPE_H:" gnome-font-private.h  parseTT.h parseTT.c &&
  cd ../installer &&
  sedit "s:freetype/freetype.h>:ft2build.h>\n#include FT_FREETYPE_H:" gf-pfb.c gf-ttf.c gnome-font-install.c &&
  cd .. &&
  default_build

) > $C_FIFO 2>&1
