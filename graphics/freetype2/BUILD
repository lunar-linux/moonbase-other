# there's a circular depend on harfbuzz
if module_installed harfbuzz; then
  OPTS+=" --with-harfbuzz"
else
  OPTS+=" --without-harfbuzz"
fi &&

OPTS+=" --disable-static --enable-freetype-config" &&

default_build &&

ln -sf /usr/include/freetype2 /usr/include/freetype
