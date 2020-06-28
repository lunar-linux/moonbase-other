add_priv_user bind:bind

OPTS+=" --disable-static \
        --enable-fixed-rrset \
        --enable-full-report \
        --with-zlib"

default_build &&

if module_installed systemd; then
  mkdir -p /run/named &&
  chown bind:bind /run/named
fi  &&

install -D -m644 $SCRIPT_DIRECTORY/sysusers.d/bind.conf /usr/lib/sysusers.d/bind.conf
