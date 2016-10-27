OPTS+=" --enable-sdl-dlopen \
        --disable-arts \
        --disable-rpath" &&

default_build &&

# remove the static libraries because --disable-static option is broken
rm -f /usr/lib/libSDL2*.a
