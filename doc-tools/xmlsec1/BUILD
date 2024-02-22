OPTS+=" --disable-static --enable-files"

default_config &&
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
