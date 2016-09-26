./autogen.sh

OPTS+=" --mandir=/usr/share/man" &&

default_build &&

if [ ! -e /etc/logrotate.conf ]; then
  install -m 0644 $SCRIPT_DIRECTORY/logrotate.conf /etc/logrotate.conf
fi &&

gather_docs examples
