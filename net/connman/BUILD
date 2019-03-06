autoreconf --install -v &&

OPTS+=" --bindir=/usr/bin \
        --enable-pie      \
        --enable-tools    \
        --enable-client   \
        --enable-ethernet \
        --enable-loopback \
        --enable-threads  \
        --enable-nmcompat"

if module_installed systemd; then
  OPTS+=" --with-systemdunitdir=/usr/lib/systemd/system"
fi

default_build
