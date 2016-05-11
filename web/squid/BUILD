set -x &&

./configure --prefix=/usr                    \
            --sysconfdir=/etc/squid          \
            --localstatedir=/var/cache/squid \
            --enable-async-io                \
            --enable-snmp                    \
            --enable-gnuregex                \
            --enable-linux-netfilter         \
            $OPTS                           &&

set +x &&

default_make &&

if [ -e /etc/init.d/squid.sh ]; then
  rm -f /etc/init.d/squid.sh
  rm -f /etc/rc?.d/???squid.sh
fi &&

devoke_installwatch &&
chown -R  nobody.nogroup /var/cache/squid
