OPTS+=" --sbindir=/usr/bin"

default_build &&

mkdir -p /var/lib/vnstat &&

install -Dm0755 examples/vnstat.cgi /usr/share/doc/vnstat/examples/vnstat.cgi &&

sedit "s:/sbin:/bin:" examples/systemd/vnstat.service &&
sedit "s:\(/bin/kill\):/usr\1:" examples/systemd/vnstat.service &&
install -Dm0644 examples/systemd/vnstat.service /usr/lib/systemd/system/vnstat.service
