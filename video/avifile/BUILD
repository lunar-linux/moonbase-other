(

  sedit "s:freetype/freetype.h>:ft2build.h>\n#include FT_FREETYPE_H:" lib/video/sub_ft.cpp  &&

  ./configure  --prefix=/usr                           \
               --with-qt-prefix=${QT_PREFIX:-$QTDIR}  &&
               $OPTS                                  &&

  default_make &&

  ln -sf /usr/include/avifile-$LVERSION /usr/include/avifile

) > $C_FIFO 2>&1
