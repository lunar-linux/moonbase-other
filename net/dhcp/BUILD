CFLAGS+=" -D_GNU_SOURCE " &&
CFGHOME="/etc/config.d" &&

OPTS+=" --with-srv-lease-file=/var/state/dhcp/dhcpd.leases \
        --with-srv6-lease-file=/var/state/dhcp/dhcpd6.leases \
        --with-cli-lease-file=/var/state/dhclient/dhclient.leases \
        --with-cli6-lease-file=/var/state/dhclient/dhclient6.leases" &&

default_build  &&

install -D -m0755 client/scripts/linux /usr/sbin/dhclient-script &&

mkdir -p /var/state/{dhcp,dhclient} &&
( [ -f /var/state/dhcp/dhcpd.leases ]  || touch /var/state/dhcp/dhcpd.leases ) &&
( [ -f /var/state/dhcp/dhcpd6.leases ] || touch /var/state/dhcp/dhcpd6.leases ) &&

# Sample config files (start with empty files)
( [ -f /etc/dhcpd.conf ]  || touch /etc/dhcpd.conf ) &&
( [ -f /etc/dhcpd6.conf ] || touch /etc/dhcpd6.conf ) &&

install -D -m644 $SCRIPT_DIRECTORY/sysusers.d/dhcp.conf /usr/lib/sysusers.d/dhcp.conf &&

# Always overwrite sample configs
install -D -m 0644 server/dhcpd.conf.example /etc/dhcpd.conf.example &&
install -D -m 0644 doc/examples/dhcpd-dhcpv6.conf /etc/dhcpd6.conf.sample &&
install -D -m 0644 client/dhclient.conf.example /etc/dhclient.conf.example &&
install -D -m 0644 doc/examples/dhclient-dhcpv6.conf /etc/dhclient6.conf.sample

