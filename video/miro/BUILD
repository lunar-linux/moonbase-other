(

  prepare_install &&

  cd platform/gtk-x11 &&
#  sedit 's/dbus_bindings.bus_release_name/dbus.dbus_bindings.bus_release_name/' onetime.py &&
#  sedit 's/dbus.service.Object.__init__(self, bus_name,/dbus.service.Object.__init__(self, bus_name=bus_name, /' onetime.py &&
  sedit 's/import bsddb.db/import bsddb3/' ../../portable/storedatabase.py &&
  sedit 's/import bsddb/import bsddb3/' ../../portable/dl_daemon/download.py &&
  python setup.py install --root=/

) > $C_FIFO 2>&1
