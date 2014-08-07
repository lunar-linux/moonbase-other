
  mkdir -p /etc/bluetooth &&

  default_build &&

  install profiles/*/*.conf /etc/bluetooth/ &&
  install src/main.conf /etc/bluetooth/ &&

# Needed by libpcap
  install lib/mgmt.h /usr/include/bluetooth
