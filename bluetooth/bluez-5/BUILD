
  mkdir -p /etc/bluetooth &&

  if in_depends $MODULE systemd ; then
    OPTS+=" --enable-systemd --disable-udev"
   else
    OPTS+=" --enable-udev --disable-systemd"
  fi &&

  default_build &&

  install profiles/*/*.conf /etc/bluetooth/ &&
  install src/main.conf /etc/bluetooth/ &&

# Needed by libpcap
  install lib/mgmt.h /usr/include/bluetooth
