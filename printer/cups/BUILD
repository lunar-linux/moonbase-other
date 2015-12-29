default_build &&

install -D -m644 "$SCRIPT_DIRECTORY/cups.logrotate" /etc/logrotate.d/cups &&

if [ -e /etc/init.d/cups ] ; then
  rm -f /etc/init.d/cups
fi
