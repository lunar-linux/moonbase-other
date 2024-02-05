CC="gcc" &&
CXX="g++" &&
CPP="gcc -E" &&

sedit 's/X-Red-Hat.*$//' desktop/htmldoc.desktop &&

default_build

if in_depends $MODULE fltk ; then
   install -Dm644 desktop/htmldoc.desktop /usr/share/applications/htmldoc.desktop &&
   for s in 32 128 256; do
      install -Dm644 desktop/htmldoc-${s}.png \
          /usr/share/icons/hicolor/${s}x${s}/apps/htmldoc/htmldoc.png
     done &&
   install -Dm644 desktop/htmldoc.xml /usr/share/mime/packages/htmldoc.xml
fi
