# Do not loopback (breaks docbook-utils build)
CENTRALIZED=/etc/sgml/catalog &&
install-catalog -r $CENTRALIZED /etc/sgml/catalog &&

OPTS+=" --sysconfdir=/etc --mandir=/usr/share/man" &&

default_build
