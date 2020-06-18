OPTS+=" --disable-static"

# json-c breaks the compile
OPTS+=" --without-libjson"

default_build &&

# We are only making the client programs
make -C lib/isc    &&
make -C lib/dns    &&
make -C lib/isccc  &&
make -C lib/isccfg &&
make -C lib/bind9  &&
make -C bin/dig    &&

# it breaks the compile
#make -C lib/lwres  &&

prepare_install &&
make -C bin/dig install
