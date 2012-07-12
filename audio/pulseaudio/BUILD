(

  if module_installed systemd ; then
    patch_it $SOURCE_CACHE/$SOURCE2 1 &&
  fi &&

  libtoolize --copy --force --automake &&
  autoreconf &&

  OPTS="--disable-hal-compat --disable-hal" &&

  if [ -f /usr/bin/parec ];  then
    rm /usr/bin/parec
  fi &&

  default_build &&

  add_priv_group pulse &&
  add_priv_group pulse-access &&
  add_priv_user pulse -d /var/run/pulse -g pulse

) > $C_FIFO 2>&1
