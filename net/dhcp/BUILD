(
  CFLAGS+=" -D_GNU_SOURCE "
  CFGHOME="/etc/config.d"
  OPTS+=" --with-srv-lease-file=/var/state/dhcp/dhcpd.leases \
          --with-cli-lease-file=/var/state/dhcp/dhclient.leases"

  if [ ! -e /proc/net/if_inet6 ]; then
  OPTS+=" --disable-dhcpv6 "
  fi &&

  sedit 's;^dist_sysconf_DATA.*dhcpd.conf;dist_sysconf_DATA =;' server/Makefile.in &&

  default_build  &&

  #make sure the config directory exists

  if [ ! -d $CFGHOME ]; then
     mkdir -p $CFGHOME
  fi  &&

  #copy the lunar config file into place

  if [ ! -e /etc/config.d/dhcpd ]; then
     cp $SCRIPT_DIRECTORY/dhcpd.config $CFGHOME/dhcpd
  else
     cp $SCRIPT_DIRECTORY/dhcpd.config $CFGHOME/dhcpd.new
  fi  &&


  #make sure the leases file exists or we won't run

  if [ ! -e /var/state/dhcp/dhcpd.leases ]; then
     mkdir -p /var/state/dhcp/
     touch /var/state/dhcp/dhcpd.leases
  fi  &&

  #we need a config file also

  if [ ! -e /etc/dhcpd.conf ]; then
     cp $SCRIPT_DIRECTORY/dhcpd.conf.sample /etc/dhcpd.conf
  else
     cp $SCRIPT_DIRECTORY/dhcpd.conf.sample /etc/dhcpd.conf.new
  fi

) > $C_FIFO 2>&1
