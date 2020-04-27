OPTS+=" --sbindir=/usr/bin \
        --libexecdir=/usr/lib/sshguard \
        --with-firewall=iptables"

default_build &&

if [ ! -f "/etc/sshguard.conf" ]; then
  cat <<EOF>/etc/sshguard.conf
LOGREADER="LANG=C /usr/bin/journalctl -afb -p info -n1 -t sshd -o cat"
BLACKLIST_FILE=120:/var/db/sshguard/blacklist.db
BACKEND="/usr/lib/sshguard/sshg-fw-iptables"
EOF
fi
