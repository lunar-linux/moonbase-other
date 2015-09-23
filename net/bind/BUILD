add_priv_user bind:bind

OPTS+=" --enable-threads --disable-static" &&

# json-c breaks the compile
OPTS+=" --without-libjson" &&

default_build &&

if module_installed systemd; then
  mkdir -p /run/named &&
  chown bind:bind /run/named
fi
