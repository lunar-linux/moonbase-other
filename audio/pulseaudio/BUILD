
  if module_installed systemd ; then
     OPTS+=" --with-udev-rules-dir=/usr/lib/udev/rules.d"
  fi &&

  libtoolize --copy --force --automake &&
  autoreconf &&

  OPTS+=" --disable-hal-compat" &&

  default_build &&

  add_priv_group pulse &&
  add_priv_group pulse-access &&
  add_priv_user pulse -d /var/run/pulse -g pulse
