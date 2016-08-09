
  CC="gcc" &&
  CXX="g++" &&
  CPP="gcc -E" &&

  OPTS+=" -disable-cdsassl --disable-ssl" &&

  sedit "30i #include <errno.h>" htmldoc/http-addrlist.c &&
  sedit "27i #include <errno.h>" htmldoc/http-private.h &&
  sedit "s:cinfo.quantize_colors  = 0;:cinfo.quantize_colors = FALSE;:g" htmldoc/image.cxx &&
  
  sedit 's/X-Red-Hat.*$//' desktop/htmldoc.desktop &&
  sedit "s:htmldoc.png:htmldoc/htmldoc.png:" desktop/htmldoc.desktop

  grep -rIl 'libgnutls-config --libs' | while read file ; 
   do sed -i 's/libgnutls-config --libs/pkg-config --libs gnutls/' $file ; done &&

  default_build

  if in_depends $MODULE fltk ; then
     install -Dm644 desktop/htmldoc.desktop /usr/share/applications/htmldoc.desktop &&
     for s in 16 24 32 48 64 96 128; do
        install -Dm644 desktop/htmldoc-${s}.png \
            /usr/share/icons/hicolor/${s}x${s}/apps/htmldoc/htmldoc.png
       done &&
     install -Dm644 desktop/htmldoc.xml /usr/share/mime/packages/htmldoc.xml
  fi
