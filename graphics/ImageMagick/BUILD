OPTS+=" --enable-shared --disable-static --disable-docs" &&

# see CONFIGURE
#OPTS+=" --disable-hdri" &&

# They say to run this if you got dirty.
# autoreconf &&
# This stage will default to a quantum depth of 16
default_config &&

make &&
prepare_install &&
make install-strip &&

# Now we do it again to get a quantum depth of 32
OPTS+=" --with-quantum-depth=32" &&
default_config &&
make &&

prepare_install &&
make install-strip
