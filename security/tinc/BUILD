OPTS+=" --prefix=/usr --sysconfdir=/etc --localstatedir=/var --sbindir=/usr/bin"

default_build

if module_installed systemd; then
  install -D -m644 $SCRIPT_DIRECTORY/system.d/tincd@.service /usr/lib/systemd/system/tincd@.service
fi
