(

   export OPTS="$OPTS --enable-python --enable-glib --enable-asserts --disable-tests --enable-verbose-mode --with-system-pid-file=/var/run/messagebus.pid --with-system-socket=/var/lib/dbus/system_bus_socket --with-session-socket-dir=/tmp" &&
   default_build &&
 
   if module_installed mono; then
   rm -fr /usr/lib/mono/dbus-sharp/* &&
   ln -sf /usr/lib/mono/gac/dbus-sharp/0.22.0.0__9eef2692033670f5/dbus-sharp.dll /usr/lib/mono/dbus-sharp/dbus-sharp.dll
   fi 

) > $C_FIFO 2>&1
