(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  patch_it $SOURCE2 0 &&
  patch_it $SOURCE3 0 &&

  cp -f $SCRIPT_DIRECTORY/kdm $SCRIPT_DIRECTORY/init.d/kdm  &&
  TMP="s:KDEDIR:${KDE_PREFIX:-$KDEDIR}:"                    &&
  sedit $TMP $SCRIPT_DIRECTORY/init.d/kdm                   &&

# So it can find the headers.
  sedit "s:/usr/include/dbus-1.0:/usr/include/dbus-1.0/qt3/dbus:g" configure &&

  default_build

) > $C_FIFO 2>&1
