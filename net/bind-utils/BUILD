OPTS+=" --enable-threads --disable-static" &&

# json-c breaks the compile
OPTS+=" --without-libjson" &&

./configure --build=$BUILD    \
            --prefix=/usr     \
            --sysconfdir=/etc \
            $OPTS            &&

# We are only making the client programs
make -C lib/isc    &&
make -C lib/dns    &&
make -C lib/isccc  &&
make -C lib/isccfg &&
make -C lib/bind9  &&
make -C lib/lwres  &&
make -C bin/dig    &&

prepare_install &&
make -C bin/dig install
