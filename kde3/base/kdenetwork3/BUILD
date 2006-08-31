(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  # Update kde path for lisa daemon
  cp -f $SCRIPT_DIRECTORY/lisa $SCRIPT_DIRECTORY/init.d/lisa  &&
  TMP="s:KDEDIR:${KDE_PREFIX:-$KDEDIR}:"                      &&
  sedit $TMP $SCRIPT_DIRECTORY/init.d/lisa                    &&

  default_build 

) > $C_FIFO 2>&1
