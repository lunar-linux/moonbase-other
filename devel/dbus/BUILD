(
  
  DBUS_USERNAME=messagebus
  DBUS_GROUPNAME=messagebus
  
  OPTS="$OPTS --enable-glib --enable-x --enable-checks --enable-verbose-mode \
        --disable-xml-docs --with-system-pid-file=/var/run/messagebus.pid    \
        --with-system-socket=/var/lib/dbus/system_bus_socket                 \
        --with-session-socket-dir=/tmp"
  
  default_build &&

  # The following used to be in POST_INSTALL but the service wasn't starting
  # on FIRST install due to the lack of existing /var/lib/dbus
  groupadd $DBUS_GROUPNAME                   2>/dev/null
  useradd  $DBUS_USERNAME -g $DBUS_GROUPNAME 2>/dev/null
  mkdir -p /var/lib/dbus
  chown -R ${DBUS_GROUPNAME}:$DBUS_GROUPNAME /var/lib/dbus

) > $C_FIFO 2>&1
