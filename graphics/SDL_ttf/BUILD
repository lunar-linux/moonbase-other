(
  unset  CFLAGS
  sedit "s:freetype/freetype.h>:ft2build.h>\n#include FT_FREETYPE_H:" SDL_ttf.c &&
  ./configure  --build=$BUILD        \
               --prefix=/usr         \
               --sysconfdir=/etc     \
               --localstatedir=/var  \
               $OPTS                 &&
  default_make

) > $C_FIFO 2>&1
