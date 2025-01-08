OPTS+=" --enable-fdb --disable-gui --sysconfdir=/etc/$MODULE" &&

default_config
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
