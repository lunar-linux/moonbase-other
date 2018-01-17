OPTS+=" --disable-static --enable-clients --enable-demo-clients-install" &&

if in_depends $MODULE systemd; then
  OPTS+=" --enable-systemd-notify --enable-systemd-login"
fi &&

default_build
