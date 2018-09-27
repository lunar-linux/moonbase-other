set -x &&

./configure --prefix=/usr                    \
            --sysconfdir=/etc/squid          \
            --localstatedir=/var/cache/squid \
            --enable-async-io                \
            --enable-arp-acl                 \
            --enable-auth                    \
            --enable-auth-basic              \
            --enable-auth-digest             \
            --enable-auth-negociate          \
            --enable-cache-digest            \
            --enable-delay-pools             \
            --enable-snmp                    \
            --enable-gnuregex                \
            --enable-linux-netfilter         \
            --disable-arch-native            \
            --with-large-files               \
            --with-logdir=/var/log/squid     \
            --with-pid-file=/run/squid.pid   \
            $OPTS &&

set +x &&

default_make &&

if [ -e /etc/init.d/squid.sh ]; then
  rm -f /etc/init.d/squid.sh
  rm -f /etc/rc?.d/???squid.sh
fi &&

devoke_installwatch &&
chown -R  nobody.nogroup /var/cache/squid
