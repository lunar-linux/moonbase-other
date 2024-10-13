# While this; https://github.com/libvips/libvips/issues/418 deals with a different app.
# I see the same issue with dvdauthor. 
OPTS+=" --enable-shared --disable-static --with-modules"

default_config &&

#to prevent overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

make &&
prepare_install &&
make install-strip
