OPTS+=" --disable-static"

default_config &&

#To prevent overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
