(

  . /etc/profile.d/qt3.rc

# This sedit is an adaptation from some patches sent by V4hn. Simpler than uploading
# to the mirror.
  sedit "s:(int\*):(unsigned int\*):" samples/qtvidcap/v4lxif.cpp samples/qtvidcap/kv4lsetup.cpp  &&


  sedit "s:freetype/freetype.h>:ft2build.h>\n#include FT_FREETYPE_H:" lib/video/sub_ft.cpp  &&

  patch_it $SOURCE_CACHE/$SOURCE2 1  &&
  patch_it $SOURCE_CACHE/$SOURCE3 0  &&

  default_build  &&

  ln -sf /usr/include/avifile-$LVERSION /usr/include/avifile

) > $C_FIFO 2>&1
