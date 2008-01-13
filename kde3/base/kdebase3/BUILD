(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  export LD_LIBRARY_PATH=${KDE_PREFIX:-$KDEDIR}/lib:${KDE_PREFIX:-$KDEDIR}/lib/kde3

# So it can find the headers.
  sedit "s:/usr/include/dbus-1.0:/usr/include/dbus-1.0/qt3/dbus:g" configure  &&

  default_build  &&

  install -m755 $SCRIPT_DIRECTORY/kde /usr/bin/

) > $C_FIFO 2>&1
