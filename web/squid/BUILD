(

#  if  module_installed  ppp;  then
#    sedit  "s:/etc/resolv.conf:/etc/ppp/resolv.conf:"  \
#           src/dns_internal.c
#  fi

 sedit  "s:\$(localstatedir)/logs/squid\.pid:/var/run/squid\.pid:"  \
         src/Makefile.in

  ./configure  --prefix=/usr                     \
               --sysconfdir=/etc/squid           \
               --localstatedir=/var/cache/squid  \
               --enable-async-io                 \
               --enable-snmp                     \
               --enable-linux-netfilter          \
               $OPTS                             &&
  default_make                                   &&

  if [ -e /etc/init.d/squid.sh ]; then
    rm -f /etc/init.d/squid.sh
    rm -f /etc/rc?.d/???squid.sh
  fi                                              &&

  chown  -R  nobody.nogroup  /var/cache/squid

) > $C_FIFO 2>&1
