sedit 's:$(docdir):/usr/share/doc:' doc/HTML/Makefile.am &&
# Do not loopback (breaks docbook-utils build)
CENTRALIZED=/etc/sgml/catalog &&
install-catalog -r $CENTRALIZED /etc/sgml/catalog &&

autoreconf &&

OPTS+=" --sysconfdir=/etc --mandir=/usr/share/man" &&

mkdir -p /usr/share/doc/$MODULE/html &&

default_build
