OPTS+=" --enable-shared --disable-static"

# see CONFIGURE
OPTS+=" --disable-hdri" &&

# They say to run this if you got dirty.
#autoreconf &&

default_config &&

# ./libtool does not accept this from OpenEXR.pc
sedit 's:-Llib64::' Makefile &&

make &&
prepare_install &&
make install-strip
