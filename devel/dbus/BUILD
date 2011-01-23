(

  rm -fr /usr/lib/systemd/system/dbus.target.wants/dbus.socket
  rm -fr /usr/lib/systemd/system/sockets.target.wants/dbus.socket
  rm -fr /usr/lib/systemd/system/multi-user.target.wants/dbus.service

  OPTS+=" --enable-checks --with-xml=expat                       \
        --with-system-pid-file=/var/run/messagebus.pid               \
        --localstatedir=/var --enable-inotify --disable-dnotify      \
        --with-session-socket-dir=/tmp  --with-dbus-user=messagebus  \
        --disable-xml-docs --with-init-scripts=none --disable-verbose-mode"

  default_build  &&

  # The following used to be in POST_INSTALL but the service wasn't starting
  # on FIRST install due to the lack of existing /var/lib/dbus
  add_priv_user messagebus:messagebus -d /dev/null -s /bin/false  &&
  mkdir -p /var/run/dbus  &&
  chown -R messagebus:messagebus /var/run/dbus  &&

  mkdir -p /etc/X11/xinit/xinitrc.d/  &&
  install -m755 $SCRIPT_DIRECTORY/30-dbus /etc/X11/xinit/xinitrc.d/

) > $C_FIFO 2>&1
