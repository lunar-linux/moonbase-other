(
  CFLAGS+=" -D_GNU_SOURCE "
  CFGHOME="/etc/config.d"
  OPTS+=" --with-srv-lease-file=/var/state/dhcp/dhcpd.leases \
          --with-srv6-lease-file=/var/state/dhcp/dhcpd6.leases \
          --with-cli-lease-file=/var/state/dhclient/dhclient.leases \
          --with-cli6-lease-file=/var/state/dhclient/dhclient6.leases"

  # Correct paths
  patch_it $SOURCE2 1 &&

  # Make missing ipv6 non fatal
  patch_it $SOURCE3 0 &&

  default_build  &&

  install -D -m0755 client/scripts/linux /usr/sbin/dhclient-script &&

  mkdir -p /var/state/{dhcp,dhclient} &&
  [ -f /var/state/dhcp/dhcpd.leases ] || touch /var/state/dhcp/dhcpd.leases &&
  [ -f /var/state/dhcp/dhcpd6.leases ] || touch /var/state/dhcp/dhcpd6.leases &&

  # Sample config files (start with empty files)
  [ -f /etc/dhcpd.conf ] || touch /etc/dhcpd.conf &&
  [ -f /etc/dhcpd6.conf ] || touch /etc/dhcpd6.conf &&

  # Always overwrite sample configs
  install -D -m 0644 server/dhcpd.conf /etc/dhcpd.conf.sample &&
  install -D -m 0644 doc/examples/dhcpd-dhcpv6.conf /etc/dhcpd6.conf.sample &&
  install -D -m 0644 client/dhclient.conf /etc/dhclient.conf.sample &&
  install -D -m 0644 doc/examples/dhclient-dhcpv6.conf /etc/dhclient6.conf.sample

) > $C_FIFO 2>&1
