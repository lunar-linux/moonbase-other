OPTS+=" --sysconfdir=/etc --disable-static --disable-padlock-support"

default_config &&
make &&
prepare_install &&

install -Dm755 src/.libs/libgcrypt.so.11.8.5 /usr/lib/
