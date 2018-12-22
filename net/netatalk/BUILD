CFLAGS="-Wno-unused-result -O2"

OPTS+=" --with-libevent-header=/usr/include \
        --with-cnid-cdb-backend \
        --with-libevent=no \
        --enable-silent-rules \
        --enable-pgp-uam"

if module_installed systemd; then
  OPTS+=" --with-init-style=systemd"
fi

default_build
