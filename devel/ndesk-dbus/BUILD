(

  # update this backup to point to where lunar's system_bus_socket is
  sedit 's:/var/run/dbus/system_bus_socket:/var/lib/dbus/system_bus_socket:' src/Address.cs  &&

  default_build

) > $C_FIFO 2>&1
