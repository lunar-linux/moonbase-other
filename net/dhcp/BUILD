(
  MODHOME="$MOONBASE/net/$MODULE"
  CFGHOME="/etc/config.d"
  
  
  sedit  "s/\/local//"  Makefile.conf                  &&
  sedit  "s/usr\/man/usr\/share\/man/g" Makefile.conf  &&
  ./configure                                          &&
  default_make                                         &&

  #make sure the config directory exists
  
  if [ ! -d $CFGHOME ]; then
     mkdir -p $CFGHOME
  fi                                                   &&

  #copy the lunar config file into place

  if [ ! -e /etc/config.d/dhcpd ]; then
     cp $MODHOME/dhcpd.config $CFGHOME/dhcpd                           
  else
     cp $MODHOME/dhcpd.config $CFGHOME/dhcpd.new
  fi                                                   &&


  #make sure the leases file exists or we won't run
  
  if [ ! -e /var/state/dhcp/dhcpd.leases ]; then
     mkdir -p /var/state/dhcp/
     touch /var/state/dhcp/dhcpd.leases
  fi                                                   &&

  #we need a config file also

  if [ ! -e /etc/dhcpd.conf ]; then
     cp $MODHOME/dhcpd.conf.sample /etc/dhcpd.conf
  else
     cp $MODHOME/dhcpd.conf.sample /etc/dhcpd.conf.new
  fi

) > $C_FIFO 2>&1
