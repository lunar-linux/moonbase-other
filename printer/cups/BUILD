OPTS+=" --enable-raw-printing" &&

default_config &&

sedit "s:-Os -g::" Makedefs &&
sedit "s:-fstack-protector::" Makedefs &&

default_make &&

install -D -m644 "$SCRIPT_DIRECTORY/cups.logrotate" /etc/logrotate.d/cups &&

if [ -e /etc/init.d/cups ] ; then
  rm -f /etc/init.d/cups
fi
