OPTS+=" --disable-static --disable-rpath"

if in_depends $MODULE pngquant; then
   CPPFLAGS+=" -I/usr/include/pngquant"
fi &&

default_build
