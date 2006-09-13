(

  . /etc/profile.d/qt3.rc
  . /etc/profile.d/kde3.rc

  # A simple sedit to fix an ICQ issue with kopete and their servers,
  # This should be rechecked on next version update.
  sedit "s:0x0A0F:0x0BB8:" kopete/protocols/oscar/liboscar/oscartypes.h

  # Update kde path for lisa daemon
  cp -f $SCRIPT_DIRECTORY/lisa $SCRIPT_DIRECTORY/init.d/lisa  &&
  TMP="s:KDEDIR:${KDE_PREFIX:-$KDEDIR}:"                      &&
  sedit $TMP $SCRIPT_DIRECTORY/init.d/lisa                    &&

  default_build

) > $C_FIFO 2>&1
