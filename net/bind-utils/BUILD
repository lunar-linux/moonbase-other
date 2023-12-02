OPTS+=" --disable-static \
        --disable-doh \
        --enable-fixed-rrset \
        --enable-full-report \
        --with-zlib"

default_config &&

# We are only making the client programs
make -C lib/isc    &&
make -C lib/dns    &&
make -C lib/ns     &&
make -C lib/isccc  &&
make -C lib/isccfg &&
make -C bin/dig    &&

# it breaks the compile
#make -C lib/lwres  &&

prepare_install &&
make -C lib/isc    install &&
make -C lib/dns    install &&
make -C lib/ns     install &&
make -C lib/isccfg install &&
make -C bin/dig    install
