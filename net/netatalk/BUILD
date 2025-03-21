OPTS+=" -Dwith-appletalk=true \
        -Dwith-bdb-version=5.3 \
        -Dwith-dbus-sysconf-path=/usr/share/dbus-1/system.d \
        -Dwith-dtrace=false \
        -Dwith-init-hooks=false \
        -Dwith-lockfile-path=/run \
        -Dwith-manual=none \
        -Dwith-readmes=false \
        -Dwith-spooldir=/var/spool/netatalk"

if module_installed systemd; then
  OPTS+=" -Dwith-init-style=systemd"
fi

default_meson_build
