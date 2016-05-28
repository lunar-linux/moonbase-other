OPTS+=" --mandir=/usr/share/man"

./autogen.sh &&

default_build &&

install -dm0755 /etc/logrotate.d &&

if [ ! -e /etc/logrotate.conf ]; then
  install -m 0644 examples/logrotate-default /etc/logrotate.conf
fi &&

gather_docs examples
