(

  if module_installed qt3 ; then
    . /etc/profile.d/qt3.rc
  fi

  if module_installed gtk-sharp ; then
    OPTS="$OPTS --enable-mono"
  else
    OPTS="$OPTS --disable-mono"
  fi

  # Figure out which XML library to use (expat or libxml2 - without the 2
  # at the end though).
  XMLLIB=$(get_local_config LUNAR_ALIAS_XMLRENDERER | sed 's/2//g')

  OPTS="$OPTS --with-x --enable-checks --enable-verbose-mode              \
        --with-xml=$XMLLIB --with-system-pid-file=/var/run/messagebus.pid \
        --with-system-socket=/var/lib/dbus/system_bus_socket              \
        --with-session-socket-dir=/tmp  --with-dbus-user=messagebus       \
        --disable-xml-docs --with-init-scripts=none"

  default_build  &&

  # The following used to be in POST_INSTALL but the service wasn't starting
  # on FIRST install due to the lack of existing /var/lib/dbus
  add_priv_user messagebus:messagebus -d /dev/null -s /bin/false &&
  mkdir -p /var/lib/dbus  &&
  chown -R messagebus:messagebus /var/lib/dbus &&

  mkdir -p /etc/X11/xinit/xinitrc.d/ &&
  install -m755 $SCRIPT_DIRECTORY/30-dbus /etc/X11/xinit/xinitrc.d/ 

) > $C_FIFO 2>&1
