
# Obviously if bluez4 we want to disable bluez-5. However since bluez-5 provides a
# compatibility layer for bluez4 we want both enabled if bluez-5 is installed.
  if in_depends $MODULE bluez ; then
    OPTS+=" --enable-bluez4 --disable-bluez5"
     else
    if in_depends $MODULE bluez-5 ; then
      OPTS+=" --enable-bluez5 --enable-bluez4"
    fi
  fi &&

  if module_installed systemd ; then
     OPTS+=" --with-udev-rules-dir=/usr/lib/udev/rules.d"
  fi &&

  OPTS+=" --disable-hal-compat" &&

  default_build &&

  add_priv_group pulse &&
  add_priv_group pulse-access &&
  add_priv_user pulse -d /var/run/pulse -g pulse
