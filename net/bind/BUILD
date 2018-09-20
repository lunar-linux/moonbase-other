add_priv_user bind:bind

OPTS+=" --disable-static"

# json-c breaks the compile
OPTS+=" --without-libjson"

default_build &&

if module_installed systemd; then
  mkdir -p /run/named &&
  chown bind:bind /run/named
fi  &&

install -D -m644 $SCRIPT_DIRECTORY/sysusers.d/bind.conf /usr/lib/sysusers.d/bind.conf
