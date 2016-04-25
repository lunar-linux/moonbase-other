./autogen.sh

OPTS+=" --mandir=/usr/share/man" &&

default_build &&

# We don't want the status file tracked
touch /var/lib/logrotate.status &&

if [ ! -e /etc/logrotate.conf ]; then
  install -m 0644 examples/logrotate-default /etc/logrotate.conf
fi &&

gather_docs examples
