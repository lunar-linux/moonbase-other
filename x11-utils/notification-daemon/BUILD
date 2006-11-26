(

  # clean some stuff up for the new dbus glib bindings to work
  sedit 's:glib-server:glib-server --prefix=notification_daemon:' src/Makefile.am  &&
  sedit 's:dbus_glib__object_info:dbus_glib_notification_daemon_object_info:' src/daemon.c  &&

  default_build

) > $C_FIFO 2>&1
