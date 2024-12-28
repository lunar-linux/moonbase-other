OPTS+=" --disable-static \
        --with-doc \
        --disable-static-genppd"

default_config
sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool &&

default_make
