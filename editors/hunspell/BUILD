OPTS+=" --disable-static" &&

default_config &&

#To prevent overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&

# add generic hunspell.so for development and projects not using pkgconfig flags
pushd /usr/lib &&
ln -sf libhunspell-${VERSION%.*}.so libhunspell.so &&
popd
