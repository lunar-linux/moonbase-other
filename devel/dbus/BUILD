(
  
  OPTS="$OPTS --enable-glib --enable-x --enable-checks --enable-verbose-mode \
        --with-xml=libxml --with-system-pid-file=/var/run/messagebus.pid    \
        --with-system-socket=/var/lib/dbus/system_bus_socket                 \
        --with-session-socket-dir=/tmp"
  
  default_build &&

  # The following used to be in POST_INSTALL but the service wasn't starting
  # on FIRST install due to the lack of existing /var/lib/dbus
  add_priv_user messagebus:messagebus -d /dev/null -s /bin/false &&
  mkdir -p /var/lib/dbus  &&
  chown -R messagebus:messagebus /var/lib/dbus

) > $C_FIFO 2>&1
