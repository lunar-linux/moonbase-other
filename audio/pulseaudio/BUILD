(

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
