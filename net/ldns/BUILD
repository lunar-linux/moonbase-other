OPTS+=" --with-drill --disable-rpath --disable-static" &&

if module_installed dnssec-anchors; then
  OPTS+=" ----with-trust-anchor=/etc/trusted-key.key"
fi &&

default_build
