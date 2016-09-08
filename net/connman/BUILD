autoreconf --install -v &&

OPTS+=" --bindir=/usr/bin  \
        --enable-ethernet  \
        --enable-loopback  \
        --enable-client    \
        --enable-pie       \
        --enable-threads   \
        --enable-tools"   &&

if module_installed systemd; then
  OPTS+=" --with-systemdunitdir=/usr/lib/systemd/system"
fi &&

default_build
