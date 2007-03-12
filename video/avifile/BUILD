(
  . /etc/profile.d/qt3.rc

  sedit "s:freetype/freetype.h>:ft2build.h>\n#include FT_FREETYPE_H:" lib/video/sub_ft.cpp  &&

  default_build &&

  ln -sf /usr/include/avifile-$LVERSION /usr/include/avifile

) > $C_FIFO 2>&1
