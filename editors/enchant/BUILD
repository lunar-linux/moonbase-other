OPTS+=" --disable-static"

default_config &&
#Prevent overlinking
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
