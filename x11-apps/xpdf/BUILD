(

sedit "s:freetype/freetype.h>:ft2build.h>\n#include FT_FREETYPE_H:" splash/SplashFTFontEngine.h \
      splash/SplashFTFont.h splash/SplashFTFontFile.h &&

OPTS=$OPTS" --enable-freetype2 \
            --with-x \
            --with-freetype2-library=/usr/lib \
            --with-freetype2-includes=/usr/include/freetype2/freetype \
            --with-Xm-library=/usr/X11R6/lib \
            --with-Xm-includes=/usr/X11R6/include \
            --with-gzip" &&

# Need this export to fix the freetype2 problems when freetype2 > 2.1.5
export CXXFLAGS="-I/usr/include/freetype2 -I/usr/include" &&

default_build

) > $C_FIFO 2>&1
