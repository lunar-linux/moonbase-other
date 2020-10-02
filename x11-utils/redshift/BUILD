OPTS+=" --disable-gui"

if module_installed systemd; then
  OPTS+=" --with-systemduserunitdir=/usr/lib/systemd/user"
fi

./bootstrap &&

default_build
