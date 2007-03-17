(

  # change hard-coded path to point to our dbus' system_bus_socket
  sedit 's:/run/dbus/:/lib/dbus/:' dbus-sharp/dbus-sharp/Address.cs  &&

  default_build

) > $C_FIFO 2>&1
