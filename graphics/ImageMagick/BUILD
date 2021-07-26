# While this; https://github.com/libvips/libvips/issues/418 deals with a different app.
# I see the same issue with dvdauthor. 
OPTS+=" --enable-shared --disable-static --with-modules"

# see CONFIGURE
OPTS+=" --disable-hdri"

default_config &&

make &&
prepare_install &&
make install-strip
