(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  export LD_LIBRARY_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3

# So it can find the headers.
  sedit "s:/usr/include/dbus-1.0:/usr/include/dbus-1.0/qt3/dbus:g" configure  &&

  if module_installed j2sdk; then
    OPTS="$OPTS --with-java=/usr/lib/j2sdk$(installed_version j2sdk)"
   if [ -d /usr/java ]; then
    OPTS="$OPTS --with-java=/usr/java"
   fi
  else
    OPTS="$OPTS --without-java"
  fi  &&

  if [ -f /usr/share/usb.ids ]; then
  OPTS="$OPTS --with-usbids=/usr/share/usb.ids"
  fi &&

  default_build  &&

  install -m755 $SCRIPT_DIRECTORY/kde /usr/bin/

) > $C_FIFO 2>&1
