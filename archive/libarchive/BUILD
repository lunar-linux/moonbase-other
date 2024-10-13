OPTS+=" --disable-static"

default_config &&
#to prevent overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make &&

sed -i "s/iconv //" /usr/lib/pkgconfig/libarchive.pc
