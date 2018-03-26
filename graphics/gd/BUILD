./bootstrap.sh

OPTS+=" --disable-static --without-liq" &&

if in_depends $MODULE pngquant; then
  CPPFLAGS+=" -I/usr/include/pngquant"
fi &&

default_build
