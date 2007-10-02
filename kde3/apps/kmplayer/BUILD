(
# fix for dbus 1.0
sedit "s/connection.h/dbus.h/" src/kmplayerprocess.cpp &&

# fix for dbus
if module_installed dbus && !(module_installed dbus-qt3) ; then
lin dbus-qt3
fi

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  default_build

) > $C_FIFO 2>&1
