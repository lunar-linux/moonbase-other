OPTS+=" --enable-shared --disable-static" &&

# see CONFIGURE
OPTS+=" --disable-hdri" &&

# They say to run this if you got dirty.
# autoreconf &&

default_config &&

make &&
prepare_install &&
make install-strip
